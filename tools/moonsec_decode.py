#!/usr/bin/env python3
"""Decode the MoonSec V3 preamble of chunk 024: identify aliases, decode the two
`j(seed, encoded_string)` base-16 blobs, and dump the resulting opcode byte
stream plus the recovered symbol table."""
import re
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "work/sample3/marbeg_dumps/024_65002084.lua"
OUT = ROOT / "output/moonsec_decode"


def strip_header(t):
    return re.sub(r"--\[\[.*?\]\]--\s*", "", t, count=1, flags=re.DOTALL)


def parse_o_preamble(o: bytes):
    """Parse the decoder's bootstrap byte string to recover the alias table.

    Opcodes (from the inline interpreter):
      \\0  len name \\len2 field  key  -> s[key] = _ENV[name][field]
      \\2  len val  key              -> s[key] = tonumber(val)
      \\3  len val  key              -> s[key] = (val ~= "\\0")
      \\4  len name key              -> s[key] = _ENV[name]
      \\6  len name key              -> s[key] = closure registered in _ENV[name]; s[key] = name
      \\5                             -> terminate
      other (e.g. \\1) -> s[key] = literal(val)
    Each `key` is always 8 bytes.
    """
    aliases = {}
    i = 0
    while i < len(o):
        op = o[i]; i += 1
        if op == 5:
            break
        ln = o[i]; i += 1
        val = o[i:i + ln].decode("latin-1"); i += ln
        if op == 0:
            # read nested field immediately after val
            ln2 = o[i]; i += 1
            field = o[i:i + ln2].decode("latin-1"); i += ln2
            key = o[i:i + 8].decode("latin-1"); i += 8
            aliases[key] = (0, val, field, f"_ENV[{val!r}][{field!r}]")
            continue
        key = o[i:i + 8].decode("latin-1"); i += 8
        meaning = {
            2: f"tonumber({val!r})",
            3: f"bool({val!r})",
            4: f"_ENV[{val!r}]",
            6: f"closure in _ENV[{val!r}] (== literal {val!r} for s[])",
        }.get(op, f"literal {val!r}")
        aliases[key] = (op, val, None, meaning)
    return aliases


def moonsec_j(f: int, t: str) -> bytes:
    """Replicate the `j(f,t)` decoder in the chunk."""
    alphabet = {}
    # first 16 chars of t define alphabet (char -> index 0..15)
    for idx in range(16):
        alphabet[t[idx]] = idx
    d = f
    out = []
    # remaining chars are processed in pairs (nibbles); byte = ((hi<<4) + lo + d) & 0xFF
    i = 16
    n = len(t)
    while i + 1 < n:
        hi = alphabet.get(t[i], 0)
        lo = alphabet.get(t[i + 1], 0)
        i += 2
        b = ((hi << 4) + lo + d) & 0xFF
        out.append(b)
        d = f + d
    return bytes(out)


def main():
    body = strip_header(SRC.read_text(errors="replace"))
    # Extract the bootstrap o-string literal (the \4\8tonumber...rZFaKTvv\5)
    m = re.search(r'o="((?:\\\d{1,3}|\\.|[^"\\])*)"', body)
    if not m:
        raise SystemExit("cannot find o=")
    raw = m.group(1)
    # decode Lua escapes -> bytes
    def dec(raw):
        out = bytearray()
        i = 0
        while i < len(raw):
            c = raw[i]
            if c == "\\" and i + 1 < len(raw):
                j = i + 1
                if raw[j].isdigit():
                    k = j
                    while k < len(raw) and raw[k].isdigit() and (k - j) < 3:
                        k += 1
                    out.append(int(raw[j:k]))
                    i = k
                    continue
                else:
                    esc = raw[j]
                    simple = {"n": 0x0A, "r": 0x0D, "t": 0x09, "0": 0, "\\": 0x5C,
                              '"': 0x22, "'": 0x27, "a": 7, "b": 8, "f": 0x0C, "v": 0x0B}
                    if esc in simple:
                        out.append(simple[esc]); i = j + 1; continue
                    i = j + 1; continue
            out.append(ord(c))
            i += 1
        return bytes(out)
    obytes = dec(raw)

    aliases = parse_o_preamble(obytes)

    # Extract the two d(j(seed, "...")) calls
    j_calls = re.findall(r'd\(j\((\d+),\s*"((?:\\\d{1,3}|\\.|[^"\\])*)"\)\)', body)

    OUT.mkdir(parents=True, exist_ok=True)

    # Write alias table
    alias_dump = {k: {"opcode": v[0], "parent_or_value": v[1], "field": v[2], "meaning": v[3]} for k, v in aliases.items()}
    (OUT / "alias_table.json").write_text(json.dumps(alias_dump, indent=2))

    summary = {
        "alias_entries": len(aliases),
        "opcode_stream_blobs": len(j_calls),
        "blobs": [],
    }

    all_aliases = dict(aliases)
    for idx, (seed_s, tstr_raw) in enumerate(j_calls):
        seed = int(seed_s)
        tstr_bytes = dec(tstr_raw)
        tstr = tstr_bytes.decode("latin-1")
        decoded = moonsec_j(seed, tstr)
        (OUT / f"opcode_stream_{idx}.bin").write_bytes(decoded)
        parsed = parse_o_preamble(decoded)
        all_aliases.update(parsed)
        blob_info = {
            "seed": seed,
            "alphabet_chars": tstr[:16],
            "encoded_length": len(tstr),
            "decoded_length": len(decoded),
            "alias_entries_decoded": len(parsed),
            "decoded_preview_hex": decoded[:64].hex(),
        }
        summary["blobs"].append(blob_info)
        print(f"blob {idx}: seed={seed} alphabet={tstr[:16]!r} -> {len(decoded)} bytes, "
              f"{len(parsed)} aliases")
    # Merge & export combined alias table
    merged = {k: {"opcode": v[0], "parent_or_value": v[1], "field": v[2], "meaning": v[3]} for k, v in all_aliases.items()}
    (OUT / "merged_alias_table.json").write_text(json.dumps(merged, indent=2))
    (OUT / "merged_aliases_human.txt").write_text(
        "\n".join(f"s[{k!r}] = {v[3]}" for k, v in all_aliases.items())
    )
    summary["total_aliases"] = len(all_aliases)
    print(f"\nTotal aliases recovered: {len(all_aliases)}")

    (OUT / "summary.json").write_text(json.dumps(summary, indent=2))
    (OUT / "aliases_human.txt").write_text(
        "\n".join(f"s[{k!r}] = {v[3]}" for k, v in aliases.items())
    )


if __name__ == "__main__":
    main()
