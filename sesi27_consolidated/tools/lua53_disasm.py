"""Lua 5.3 bytecode disassembler — extracts constants, opcodes, sub-prototypes."""
import struct, sys, json, os

# Lua 5.3 opcodes (lopcodes.h)
OPNAMES = [
    "MOVE","LOADK","LOADKX","LOADBOOL","LOADNIL","GETUPVAL","GETTABUP","GETTABLE",
    "SETTABUP","SETUPVAL","SETTABLE","NEWTABLE","SELF","ADD","SUB","MUL","MOD","POW",
    "DIV","IDIV","BAND","BOR","BXOR","SHL","SHR","UNM","BNOT","NOT","LEN","CONCAT",
    "JMP","EQ","LT","LE","TEST","TESTSET","CALL","TAILCALL","RETURN","FORLOOP",
    "FORPREP","TFORCALL","TFORLOOP","SETLIST","CLOSURE","VARARG","EXTRAARG"
]
# arg modes: iABC, iABx, iAsBx, iAx (for decoding A/B/C/Bx)
# Bx = 18 bits unsigned, sBx = Bx - MAXARG_sBx
MAXARG_Bx = (1 << 18) - 1
MAXARG_sBx = MAXARG_Bx >> 1

# Per-opcode arg format (T means treat B/C as RK if K-bit set)
# Format: ('iABC'|'iABx'|'iAsBx'|'iAx')
OPMODES = {
    "MOVE":'iABC',"LOADK":'iABx',"LOADKX":'iABx',"LOADBOOL":'iABC',"LOADNIL":'iABC',
    "GETUPVAL":'iABC',"GETTABUP":'iABC',"GETTABLE":'iABC',"SETTABUP":'iABC',
    "SETUPVAL":'iABC',"SETTABLE":'iABC',"NEWTABLE":'iABC',"SELF":'iABC',
    "ADD":'iABC',"SUB":'iABC',"MUL":'iABC',"MOD":'iABC',"POW":'iABC',"DIV":'iABC',
    "IDIV":'iABC',"BAND":'iABC',"BOR":'iABC',"BXOR":'iABC',"SHL":'iABC',"SHR":'iABC',
    "UNM":'iABC',"BNOT":'iABC',"NOT":'iABC',"LEN":'iABC',"CONCAT":'iABC',
    "JMP":'iAsBx',"EQ":'iABC',"LT":'iABC',"LE":'iABC',"TEST":'iABC',"TESTSET":'iABC',
    "CALL":'iABC',"TAILCALL":'iABC',"RETURN":'iABC',"FORLOOP":'iAsBx',"FORPREP":'iAsBx',
    "TFORCALL":'iABC',"TFORLOOP":'iAsBx',"SETLIST":'iABC',"CLOSURE":'iABx',
    "VARARG":'iABC',"EXTRAARG":'iAx'
}

class Reader:
    def __init__(self, b):
        self.b = b; self.p = 0
    def read(self, n): r = self.b[self.p:self.p+n]; self.p += n; return r
    def b1(self): r = self.b[self.p]; self.p += 1; return r
    def i32(self): r = struct.unpack_from('<I', self.b, self.p)[0]; self.p += 4; return r
    def i64(self): r = struct.unpack_from('<q', self.b, self.p)[0]; self.p += 8; return r
    def f64(self): r = struct.unpack_from('<d', self.b, self.p)[0]; self.p += 8; return r
    def size(self): return self.i64()  # Lua 5.3 uses size_t == 8 bytes on 64-bit
    def lstring(self):
        # 5.3 uses 1-byte size; 0xFF means use full size_t (8 bytes)
        n = self.b1()
        if n == 0: return None
        if n == 0xff: n = self.i64()
        s = self.read(n - 1)  # length includes trailing \0
        return bytes(s).decode('utf-8', errors='replace')

def parse_header(r):
    sig = r.read(4)
    assert sig == b'\x1bLua', f"bad magic {sig}"
    ver = r.b1()
    fmt = r.b1()
    assert r.read(6) == b'\x19\x93\r\n\x1a\n', "bad luac data"
    int_size = r.b1()
    sz_size = r.b1()
    instr_size = r.b1()
    int_t_size = r.b1()
    num_size = r.b1()
    # check_int: 0x5678
    check_int = struct.unpack_from('<q', r.b, r.p)[0]; r.p += int_t_size
    # check_num: 370.5
    check_num = struct.unpack_from('<d', r.b, r.p)[0]; r.p += num_size
    return {"version": ver, "int_size": int_size, "sz_size": sz_size, "instr_size": instr_size}

def decode_instr(ins):
    op = ins & 0x3F
    if op >= len(OPNAMES): return {"op": "?", "raw": ins}
    name = OPNAMES[op]
    A = (ins >> 6) & 0xFF
    mode = OPMODES.get(name, 'iABC')
    out = {"op": name, "A": A}
    if mode == 'iABx':
        out["Bx"] = (ins >> 14) & 0x3FFFF
    elif mode == 'iAsBx':
        out["sBx"] = ((ins >> 14) & 0x3FFFF) - MAXARG_sBx
    elif mode == 'iAx':
        out["Ax"] = (ins >> 6) & 0x3FFFFFF
    else:  # iABC
        out["B"] = (ins >> 23) & 0x1FF
        out["C"] = (ins >> 14) & 0x1FF
    return out

def parse_function(r, depth=0):
    src = r.lstring()
    line_def = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    line_last = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    nparams = r.b1()
    is_vararg = r.b1()
    max_stack = r.b1()
    # code
    code_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    code = []
    for _ in range(code_n):
        ins = struct.unpack_from('<I', r.b, r.p)[0]; r.p += 4
        code.append(decode_instr(ins))
    # constants
    const_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    consts = []
    for _ in range(const_n):
        t = r.b1()
        if t == 0: consts.append(None)
        elif t == 1: consts.append(bool(r.b1()))
        elif t == 3: consts.append(r.f64())  # LUA_TNUMFLT
        elif t == 0x13: consts.append(r.i64())  # LUA_TNUMINT (5.3)
        elif t == 4: consts.append(r.lstring())  # LUA_TSHRSTR
        elif t == 0x14: consts.append(r.lstring())  # LUA_TLNGSTR
        else:
            raise ValueError(f"unknown const type {t:x} at {r.p}")
    # upvalues
    upv_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    upvs = []
    for _ in range(upv_n):
        instack = r.b1(); idx = r.b1()
        upvs.append({"instack": instack, "idx": idx})
    # protos
    proto_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    protos = [parse_function(r, depth+1) for _ in range(proto_n)]
    # debug
    line_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    r.p += 4 * line_n  # skip line info
    loc_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    locals_ = []
    for _ in range(loc_n):
        nm = r.lstring(); start = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
        end = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
        locals_.append({"name": nm, "start": start, "end": end})
    upn_n = struct.unpack_from('<i', r.b, r.p)[0]; r.p += 4
    upnames = [r.lstring() for _ in range(upn_n)]
    return {
        "src": src, "line_def": line_def, "line_last": line_last,
        "nparams": nparams, "is_vararg": bool(is_vararg), "max_stack": max_stack,
        "code": code, "consts": consts, "upvalues": upvs, "upnames": upnames,
        "locals": locals_, "protos": protos,
    }

def fmt_const(c, max_len=120):
    if isinstance(c, str):
        s = repr(c)
        return s if len(s) <= max_len else s[:max_len] + f"...[+{len(s)-max_len}]"
    return repr(c)

def format_instr(i, ins, consts):
    op = ins["op"]
    parts = [f"{i:5d}", f"{op:<10}"]
    if "B" in ins:
        # decode RK if possible (K-bit = bit 8 -> 256+)
        b_str = f"R{ins['B']}" if ins['B'] < 256 else f"K{ins['B']-256}"
        c_str = f"R{ins['C']}" if ins['C'] < 256 else f"K{ins['C']-256}"
        parts.append(f"A={ins['A']} B={b_str} C={c_str}")
    elif "Bx" in ins:
        parts.append(f"A={ins['A']} Bx={ins['Bx']}")
        if op == "LOADK" and ins["Bx"] < len(consts):
            parts.append(f"; {fmt_const(consts[ins['Bx']])}")
        elif op == "CLOSURE":
            parts.append(f"; proto[{ins['Bx']}]")
    elif "sBx" in ins:
        parts.append(f"A={ins['A']} sBx={ins['sBx']} (-> {i+1+ins['sBx']})")
    elif "Ax" in ins:
        parts.append(f"Ax={ins['Ax']}")
    return " ".join(parts)

def dump_proto(p, prefix="main", depth=0, max_consts=200, max_instrs=300):
    out = []
    indent = "  " * depth
    out.append(f"{indent}=== Proto {prefix} ({p['line_def']}-{p['line_last']}) ===")
    out.append(f"{indent}  params={p['nparams']} vararg={p['is_vararg']} maxstack={p['max_stack']}")
    out.append(f"{indent}  upvalues({len(p['upvalues'])}): " + ", ".join(
        f"{(p['upnames'][i] if i < len(p['upnames']) else '?')}({'stk' if u['instack'] else 'upv'}{u['idx']})"
        for i, u in enumerate(p['upvalues'])))
    out.append(f"{indent}  constants ({len(p['consts'])}):")
    for i, c in enumerate(p['consts'][:max_consts]):
        out.append(f"{indent}    K{i}: {fmt_const(c)}")
    if len(p['consts']) > max_consts:
        out.append(f"{indent}    ... (+{len(p['consts'])-max_consts} more)")
    out.append(f"{indent}  code ({len(p['code'])} instr):")
    for i, ins in enumerate(p['code'][:max_instrs]):
        out.append(f"{indent}    " + format_instr(i, ins, p['consts']))
    if len(p['code']) > max_instrs:
        out.append(f"{indent}    ... (+{len(p['code'])-max_instrs} more)")
    out.append(f"{indent}  sub-protos: {len(p['protos'])}")
    for i, sp in enumerate(p['protos']):
        out.append("")
        out.extend(dump_proto(sp, f"{prefix}.{i}", depth+1, max_consts, max_instrs).split("\n"))
    return "\n".join(out)

def collect_strings(p):
    """Walk proto tree and collect ALL string constants."""
    out = []
    for c in p['consts']:
        if isinstance(c, str): out.append(c)
    for sp in p['protos']:
        out.extend(collect_strings(sp))
    return out

def main():
    in_path = sys.argv[1]
    out_dir = sys.argv[2] if len(sys.argv) > 2 else "."
    os.makedirs(out_dir, exist_ok=True)
    b = open(in_path, 'rb').read()
    r = Reader(b)
    hdr = parse_header(r)
    upv_count = r.b1()
    main_proto = parse_function(r)
    base = os.path.basename(in_path).rsplit('.',1)[0]

    # Full disasm
    open(f"{out_dir}/{base}_disasm.txt", "w").write(dump_proto(main_proto))

    # All strings (this is the gold)
    all_strs = collect_strings(main_proto)
    with open(f"{out_dir}/{base}_strings.txt", "w") as f:
        f.write(f"# {base}: {len(all_strs)} string constants ({len(set(all_strs))} unique)\n\n")
        for s in sorted(set(all_strs), key=lambda x:(-len(x), x)):
            f.write(f"[{len(s):6d}] {s!r}\n")

    # Stats
    def count_protos(p):
        n = 1
        for sp in p['protos']: n += count_protos(sp)
        return n
    def count_instrs(p):
        n = len(p['code'])
        for sp in p['protos']: n += count_instrs(sp)
        return n
    summary = {
        "header": hdr,
        "main_upvalues": upv_count,
        "total_protos": count_protos(main_proto),
        "total_instrs": count_instrs(main_proto),
        "main_consts": len(main_proto['consts']),
        "total_strings": len(all_strs),
        "unique_strings": len(set(all_strs)),
    }
    print(json.dumps(summary, indent=2))
    open(f"{out_dir}/{base}_summary.json", "w").write(json.dumps(summary, indent=2))

if __name__ == "__main__":
    main()
