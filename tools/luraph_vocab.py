#!/usr/bin/env python3
"""Split the decoded string set from a Luraph chunk into:
  - identifiers (Lua-ident-shaped tokens)
  - short literals (<= 64 chars printable)
  - numeric literals
  - long opcode-pool / ascii85-style blobs (leave aside)
and extract per-category frequency + vocabulary."""
import json
import re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

IDENT_RE = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*$")
NUM_RE = re.compile(r"^-?\d+(?:\.\d+)?(?:[eE][+-]?\d+)?$")
ASCII85_LIKE = re.compile(r"^[!-uz]+$")


def process(chunk_name: str):
    base = ROOT / f"output/obfuscated_analysis/{chunk_name}"
    decoded = (base / "decoded_strings.txt").read_text().splitlines()
    idents = Counter()
    numerics = Counter()
    short_literals = []
    long_pool = []
    other = []
    for s in decoded:
        if IDENT_RE.match(s):
            idents[s] += 1
        elif NUM_RE.match(s):
            numerics[s] += 1
        elif len(s) <= 64 and all(32 <= ord(c) < 127 for c in s):
            short_literals.append(s)
        elif len(s) > 200 and ASCII85_LIKE.match(s):
            long_pool.append(s)
        else:
            other.append(s)
    info = {
        "total": len(decoded),
        "identifiers_unique": len(idents),
        "numerics_unique": len(numerics),
        "short_literals": len(short_literals),
        "long_pool_blobs": len(long_pool),
        "long_pool_bytes": sum(len(s) for s in long_pool),
        "other": len(other),
        "top_identifiers": idents.most_common(50),
    }
    (base / "vocabulary_summary.json").write_text(json.dumps(info, indent=2))
    (base / "identifiers.txt").write_text("\n".join(sorted(idents)))
    (base / "short_literals.txt").write_text("\n".join(sorted(set(short_literals))))
    (base / "opcode_pool_blobs.txt").write_text("\n---\n".join(long_pool))
    print(f"\n=== {chunk_name} ===")
    for k, v in info.items():
        if k != "top_identifiers":
            print(f"  {k}: {v}")
    print("  top identifiers:")
    for ident, n in info["top_identifiers"][:20]:
        print(f"    {n:4d} {ident}")


def main():
    for name in ["luraph_14_4_2_004", "luraph_14_7_011"]:
        process(name)


if __name__ == "__main__":
    main()
