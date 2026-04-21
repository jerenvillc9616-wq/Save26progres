#!/usr/bin/env python3
"""Normalize Luau-flavored Lua to Lua 5.3 compatible.

Handles:
  * Numeric literal underscores: 0x12_34, 0b1_001, 1_000 -> stripped
  * `continue` -> `goto __continue` plus `::__continue::` injected before each `end` of innermost loops (heuristic).
  * Ensures bit32 / bit shim is at top.
"""
import re, sys, io

NUM_RE = re.compile(r'(0[xX][0-9A-Fa-f_]+|0[bB][01_]+|\d[\d_]*\.?\d*([eE][-+]?\d+)?)')

def _strip_underscores(m):
    s = m.group(0).replace('_', '')
    if s[:2] in ('0b', '0B'):
        try:
            return str(int(s[2:], 2))
        except Exception:
            return s
    return s

def _fix_num_text(s: str) -> str:
    return NUM_RE.sub(_strip_underscores, s)

# Luau-specific string escapes not in Lua 5.3
def _fix_string_escapes(s: str) -> str:
    """Convert Luau-only escape sequences (\\e, \\u{XXXX}) inside a string literal body."""
    out = []
    i = 0
    n = len(s)
    while i < n:
        c = s[i]
        if c == '\\' and i+1 < n:
            nxt = s[i+1]
            if nxt == 'e':
                out.append('\\27'); i += 2; continue
            if nxt == 'z':
                # \z skips following whitespace; valid in Lua 5.3 too. Pass through.
                out.append('\\z'); i += 2; continue
            if nxt == 'u' and i+2 < n and s[i+2] == '{':
                # \\u{XXXX} -- Luau format. Lua 5.3 also supports \u{XXXX}; pass through.
                end = s.find('}', i+3)
                if end != -1:
                    out.append(s[i:end+1]); i = end+1; continue
            out.append(s[i:i+2]); i += 2; continue
        out.append(c); i += 1
    return ''.join(out)

# Inject continue handling: replace `continue` with `goto __continue_<n>;`
# and add `::__continue_<n>::` right before the next `end` at the same depth.
# Strategy: tokenize into a tree of for/while/repeat blocks; assign each loop
# a unique label; rewrite `continue` to that label; insert label before the loop's `end`.
KEYWORDS_LOOP_OPEN = ('for', 'while', 'repeat')

def fix_compound_assign(src: str) -> str:
    """Rewrite Luau compound assignments (+=, -=, *=, /=, %=, ^=, ..=) to Lua 5.3 form.
    `LHS op= RHS;`  ->  `LHS = LHS op (RHS);`
    Only operates outside strings/comments. RHS is read until top-level `;` or newline.
    LHS is read backwards as a chain of identifier/index/.field tokens.
    """
    n = len(src)
    out = []
    i = 0
    in_string = None
    in_long_string = False
    long_string_level = 0
    in_comment = False
    in_long_comment = False
    long_comment_level = 0

    def scan_lhs_back(s):
        # s is a string. Walk backwards to capture an lvalue: ident (\.ident | \[..\])*
        j = len(s) - 1
        while j >= 0 and s[j] in ' \t': j -= 1
        end = j + 1
        depth = 0
        while j >= 0:
            ch = s[j]
            if depth > 0:
                if ch == '[': depth -= 1
                elif ch == ']': depth += 1
                j -= 1; continue
            if ch == ']':
                depth += 1; j -= 1; continue
            if ch.isalnum() or ch == '_' or ch == '.':
                j -= 1; continue
            break
        start = j + 1
        if start >= end: return None, end
        if not (s[start].isalpha() or s[start] == '_'): return None, end
        return s[start:end], start

    def scan_rhs_forward(s, pos):
        # Read expression until top-level `;` or `\n` not inside ()/[]/{} and not in strings
        j = pos
        L = len(s)
        depth_paren = 0; depth_brack = 0; depth_brace = 0
        instr = None
        in_long = False; long_lvl = 0
        in_cmt = False
        while j < L:
            ch = s[j]
            if in_long:
                if ch == ']' and s.startswith(']' + '='*long_lvl + ']', j):
                    j += 2 + long_lvl; in_long = False; continue
                j += 1; continue
            if in_cmt:
                if ch == '\n': in_cmt = False
                j += 1; continue
            if instr:
                if ch == '\\' and j+1 < L: j += 2; continue
                if ch == instr: instr = None
                j += 1; continue
            if ch == '-' and j+1 < L and s[j+1] == '-':
                in_cmt = True; j += 2; continue
            if ch in ('"', "'"):
                instr = ch; j += 1; continue
            if ch == '[':
                k = j+1; eq = 0
                while k < L and s[k] == '=': eq += 1; k += 1
                if k < L and s[k] == '[':
                    in_long = True; long_lvl = eq; j = k+1; continue
                depth_brack += 1; j += 1; continue
            if ch == ']': depth_brack -= 1; j += 1; continue
            if ch == '(': depth_paren += 1; j += 1; continue
            if ch == ')': depth_paren -= 1; j += 1; continue
            if ch == '{': depth_brace += 1; j += 1; continue
            if ch == '}': depth_brace -= 1; j += 1; continue
            if depth_paren == 0 and depth_brack == 0 and depth_brace == 0:
                if ch == ';' or ch == '\n':
                    return j
            j += 1
        return j

    while i < n:
        c = src[i]
        # Skip strings/comments while emitting char-by-char
        if in_long_comment:
            out.append(c)
            if c == ']' and src.startswith(']' + '='*long_comment_level + ']', i):
                out.extend('=' * long_comment_level + ']')
                i += 2 + long_comment_level; in_long_comment = False; continue
            i += 1; continue
        if in_long_string:
            out.append(c)
            if c == ']' and src.startswith(']' + '='*long_string_level + ']', i):
                out.extend('=' * long_string_level + ']')
                i += 2 + long_string_level; in_long_string = False; continue
            i += 1; continue
        if in_comment:
            out.append(c)
            if c == '\n': in_comment = False
            i += 1; continue
        if in_string:
            if c == '\\' and i+1 < n:
                out.extend(src[i:i+2]); i += 2; continue
            out.append(c)
            if c == in_string: in_string = None
            i += 1; continue
        if src.startswith('--', i):
            j = i+2
            if j < n and src[j] == '[':
                k = j+1; eq = 0
                while k < n and src[k] == '=': eq += 1; k += 1
                if k < n and src[k] == '[':
                    in_long_comment = True; long_comment_level = eq
                    out.extend(src[i:k+1]); i = k+1; continue
            in_comment = True; out.extend('--'); i += 2; continue
        if c in ('"', "'"):
            in_string = c; out.append(c); i += 1; continue
        if c == '[':
            j = i+1; eq = 0
            while j < n and src[j] == '=': eq += 1; j += 1
            if j < n and src[j] == '[':
                in_long_string = True; long_string_level = eq
                out.extend(src[i:j+1]); i = j+1; continue
        op = None; op_len = 0
        if c == '.' and i+2 < n and src[i+1] == '.' and src[i+2] == '=' and (i+3 >= n or src[i+3] != '='):
            op = '..'; op_len = 3
        elif c in '+-*/%^' and i+1 < n and src[i+1] == '=':
            op = c; op_len = 2
        if op is not None:
            lhs, lhs_start = scan_lhs_back(''.join(out))
            if lhs is not None:
                rhs_start = i + op_len
                while rhs_start < n and src[rhs_start] in ' \t': rhs_start += 1
                rhs_end = scan_rhs_forward(src, rhs_start)
                rhs = src[rhs_start:rhs_end]
                new_text = lhs + ' = ' + lhs + ' ' + op + ' (' + rhs + ')'
                out[lhs_start:] = list(new_text)
                i = rhs_end
                continue
        out.append(c); i += 1
    return ''.join(out)


def normalize_all(src: str) -> str:
    """Single-pass tokenizer that:
      * Strips numeric literal underscores (only in code, never in strings/comments)
      * Converts 0b... to decimal
      * Converts Luau `continue` -> goto/label
      * Converts Luau-only escape sequences (\\e -> \\27) inside strings

    Stack scopes: function / if / do_loop / do_plain / repeat
    """
    out = []
    i = 0
    n = len(src)
    stack = []          # list of {kind, has_continue, label}
    label_counter = [0]
    pending_loop = None  # 'for' / 'while' waiting for `do`

    in_string = None
    in_comment = False
    in_long_comment = False
    long_comment_level = 0
    in_long_string = False
    long_string_level = 0

    def at(s, idx):
        return src.startswith(s, idx)

    while i < n:
        c = src[i]
        # ---- inside long comment ----
        if in_long_comment:
            out.append(c)
            if c == ']' and src.startswith(']' + '='*long_comment_level + ']', i):
                out.append('=' * long_comment_level); out.append(']')
                i += 2 + long_comment_level; in_long_comment = False; continue
            i += 1; continue
        # ---- inside long string (raw, no escapes processed) ----
        if in_long_string:
            out.append(c)
            if c == ']' and src.startswith(']' + '='*long_string_level + ']', i):
                out.append('=' * long_string_level); out.append(']')
                i += 2 + long_string_level; in_long_string = False; continue
            i += 1; continue
        # ---- inside short comment ----
        if in_comment:
            out.append(c)
            if c == '\n': in_comment = False
            i += 1; continue
        # ---- inside short string (translate Luau escapes) ----
        if in_string:
            if c == '\\' and i+1 < n:
                nxt = src[i+1]
                if nxt == 'e':
                    out.append('\\27'); i += 2; continue
                if nxt == 'u' and i+2 < n and src[i+2] == '{':
                    end = src.find('}', i+3)
                    if end != -1:
                        out.append(src[i:end+1]); i = end+1; continue
                # Lua 5.3 valid escapes: a b f n r t v \ " ' newline z x ddd
                _VALID = set("abfnrtv\\\"'\n\rz")
                if nxt in _VALID or nxt.isdigit() or nxt == 'x':
                    out.append(src[i]); out.append(src[i+1])
                    i += 2; continue
                # Unknown escape (e.g. \B \q): emit literal backslash + char as \092 + char
                out.append('\\092'); out.append(src[i+1]); i += 2; continue
            out.append(c)
            if c == in_string:
                in_string = None
            i += 1; continue
        # ---- detect comment start ----
        if at('--', i):
            j = i + 2
            if j < n and src[j] == '[':
                k = j + 1; eq = 0
                while k < n and src[k] == '=': eq += 1; k += 1
                if k < n and src[k] == '[':
                    in_long_comment = True; long_comment_level = eq
                    out.append(src[i:k+1]); i = k + 1; continue
            in_comment = True; out.append('--'); i += 2; continue
        if c in ("'", '"'):
            in_string = c; out.append(c); i += 1; continue
        if c == '[':
            j = i + 1; eq = 0
            while j < n and src[j] == '=': eq += 1; j += 1
            if j < n and src[j] == '[':
                in_long_string = True; long_string_level = eq
                out.append(src[i:j+1]); i = j + 1; continue
        # ---- numeric literal (only outside strings/comments) ----
        if c.isdigit() or (c == '.' and i+1 < n and src[i+1].isdigit()):
            prev = src[i-1] if i > 0 else None
            if prev is None or not (prev.isalnum() or prev == '_'):
                m = NUM_RE.match(src, i)
                if m:
                    raw = m.group(0)
                    out.append(_strip_underscores(m))
                    i = m.end(); continue
        # ---- identifier / keyword ----
        if c.isalpha() or c == '_':
            j = i
            while j < n and (src[j].isalnum() or src[j] == '_'):
                j += 1
            word = src[i:j]
            prev = src[i-1] if i > 0 else None
            is_kw_pos = prev is None or not (prev.isalnum() or prev == '_')
            if is_kw_pos:
                if word == 'function':
                    stack.append({'kind':'function','has_continue':False,'label':None})
                    out.append(word); i = j; continue
                if word == 'if':
                    stack.append({'kind':'if','has_continue':False,'label':None})
                    out.append(word); i = j; continue
                if word == 'for' or word == 'while':
                    pending_loop = word
                    out.append(word); i = j; continue
                if word == 'repeat':
                    label_counter[0] += 1
                    stack.append({'kind':'repeat','has_continue':False,
                                  'label':'__continue_%d' % label_counter[0]})
                    out.append(word); i = j; continue
                if word == 'do':
                    if pending_loop is not None:
                        label_counter[0] += 1
                        stack.append({'kind':'do_loop','has_continue':False,
                                      'label':'__continue_%d' % label_counter[0]})
                        pending_loop = None
                    else:
                        stack.append({'kind':'do_plain','has_continue':False,'label':None})
                    out.append(word); i = j; continue
                if word == 'then':
                    # `then` doesn't open a new scope (the `if` already did)
                    # but `elseif ... then` doesn't either; harmless
                    out.append(word); i = j; continue
                if word == 'elseif' or word == 'else':
                    # part of an if; doesn't open/close
                    out.append(word); i = j; continue
                if word == 'end':
                    if stack:
                        top = stack.pop()
                        if top.get('kind') == 'do_loop' and top.get('has_continue'):
                            out.append('::%s:: ' % top['label'])
                    out.append(word); i = j; continue
                if word == 'until':
                    if stack and stack[-1].get('kind') == 'repeat':
                        top = stack.pop()
                        if top.get('has_continue'):
                            out.append('::%s:: ' % top['label'])
                    out.append(word); i = j; continue
                if word == 'continue':
                    target = None
                    for s in reversed(stack):
                        k = s.get('kind')
                        if k in ('do_loop','repeat'):
                            s['has_continue'] = True
                            target = s['label']; break
                        if k == 'function':
                            break
                    if target:
                        out.append('goto %s' % target)
                        i = j; continue
                    # no enclosing loop -> drop continue (rare/invalid)
            out.append(word); i = j; continue
        out.append(c); i += 1

    return ''.join(out)


PRELUDE = """-- normalized prelude
do
  local _bit32 = rawget(_G, 'bit32') or {}
  rawset(_G, 'bit32', _bit32)
  local function _to_u32(x) return x & 0xFFFFFFFF end
  if not _bit32.band     then _bit32.band     = function(...) local a=0xFFFFFFFF; for _,v in ipairs({...}) do a = a & (v or 0xFFFFFFFF) end; return _to_u32(a) end end
  if not _bit32.bor      then _bit32.bor      = function(...) local a=0; for _,v in ipairs({...}) do a = a | (v or 0) end; return _to_u32(a) end end
  if not _bit32.bxor     then _bit32.bxor     = function(...) local a=0; for _,v in ipairs({...}) do a = a ~ (v or 0) end; return _to_u32(a) end end
  if not _bit32.bnot     then _bit32.bnot     = function(a)   return _to_u32(~a) end end
  if not _bit32.lshift   then _bit32.lshift   = function(a,b) return _to_u32((a & 0xFFFFFFFF) << (b & 31)) end end
  if not _bit32.rshift   then _bit32.rshift   = function(a,b) return _to_u32((a & 0xFFFFFFFF) >> (b & 31)) end end
  if not _bit32.arshift  then _bit32.arshift  = function(a,b)
    a = a & 0xFFFFFFFF; b = b & 31
    if a < 0x80000000 then return a >> b end
    local s = a >> b
    -- propagate sign
    s = s | (((1<<b) - 1) << (32 - b))
    return _to_u32(s)
  end end
  -- Luau extensions:
  if not _bit32.lrotate  then _bit32.lrotate  = function(a,b) a = a & 0xFFFFFFFF; b = b & 31; return _to_u32(((a << b) | (a >> (32-b)))) end end
  if not _bit32.rrotate  then _bit32.rrotate  = function(a,b) a = a & 0xFFFFFFFF; b = b & 31; return _to_u32(((a >> b) | (a << (32-b)))) end end
  if not _bit32.countlz  then _bit32.countlz  = function(a) a = a & 0xFFFFFFFF; if a==0 then return 32 end; local n=0; while (a & 0x80000000) == 0 do n=n+1; a=a<<1 end; return n end end
  if not _bit32.countrz  then _bit32.countrz  = function(a) a = a & 0xFFFFFFFF; if a==0 then return 32 end; local n=0; while (a & 1) == 0 do n=n+1; a=a>>1 end; return n end end
  if not _bit32.byteswap then _bit32.byteswap = function(a) a = a & 0xFFFFFFFF; return _to_u32(((a&0xFF)<<24) | ((a&0xFF00)<<8) | ((a>>8)&0xFF00) | ((a>>24)&0xFF)) end end
  if not _bit32.extract  then _bit32.extract  = function(a,f,w) w=w or 1; return ((a>>f) & ((1<<w)-1)) end end
  if not _bit32.replace  then _bit32.replace  = function(a,v,f,w) w=w or 1; local m=((1<<w)-1)<<f; return _to_u32((a & ~m) | ((v<<f) & m)) end end
  if not _bit32.btest    then _bit32.btest    = function(a,b) return (a & b) ~= 0 end end
end
if not table.unpack then table.unpack = unpack end
if not unpack then unpack = table.unpack end
-- buffer stub (Luau only)
if not buffer then
  buffer = {
    create = function(n) local t={n=n,d={}}; for i=0,n-1 do t.d[i]=0 end; return t end,
    fromstring = function(s) local t={n=#s,d={}}; for i=1,#s do t.d[i-1]=string.byte(s,i) end; return t end,
    tostring = function(b) local s={}; for i=0,b.n-1 do s[#s+1]=string.char(b.d[i] or 0) end; return table.concat(s) end,
    len = function(b) return b.n end,
    readu8 = function(b,o) return b.d[o] or 0 end,
    writeu8 = function(b,o,v) b.d[o]=v & 0xFF end,
    readu16 = function(b,o) return (b.d[o] or 0) | ((b.d[o+1] or 0) << 8) end,
    readu32 = function(b,o) return (b.d[o] or 0) | ((b.d[o+1] or 0)<<8) | ((b.d[o+2] or 0)<<16) | ((b.d[o+3] or 0)<<24) end,
    writeu16 = function(b,o,v) b.d[o]=v & 0xFF; b.d[o+1]=(v>>8) & 0xFF end,
    writeu32 = function(b,o,v) b.d[o]=v & 0xFF; b.d[o+1]=(v>>8) & 0xFF; b.d[o+2]=(v>>16) & 0xFF; b.d[o+3]=(v>>24) & 0xFF end,
    copy = function(d,doff,s,soff,n) for i=0,(n or s.n)-1 do d.d[doff+i]=s.d[(soff or 0)+i] end end,
    fill = function(b,o,v,n) for i=0,(n or b.n)-1 do b.d[o+i]=v end end,
  }
end
"""


def main():
    if len(sys.argv) < 3:
        print("usage: normalize_luau.py in.lua out.lua")
        sys.exit(1)
    with open(sys.argv[1], 'r', encoding='utf-8', errors='surrogateescape') as f:
        src = f.read()
    src = fix_compound_assign(src)
    src = normalize_all(src)
    src = PRELUDE + src
    with open(sys.argv[2], 'w', encoding='utf-8', errors='surrogateescape') as f:
        f.write(src)
    print("wrote", sys.argv[2], "bytes=", len(src))

if __name__ == '__main__':
    main()
