#!/usr/bin/env python3
"""Classify marbeg-dumped chunks: Luarmor, Luraph, MoonSec, clean Lua source."""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DUMPS = ROOT / "work/sample3/marbeg_dumps"
OUT = ROOT / "output"


def strip_header(text: str) -> str:
    # Remove the leading --[[ MARBEG DUMP #N ... ]]-- header
    m = re.match(r"--\[\[\s*MARBEG DUMP.*?\]\]--\s*", text, re.DOTALL)
    return text[m.end():] if m else text


def classify(body: str) -> tuple[str, str]:
    head = body[:4096]
    tail = body[-2048:]
    if "Luarmor V4 bootstrapper" in head:
        return "luarmor_v4_bootstrap", "Luarmor V4 internal runtime"
    if "_bsdata0" in head and "static_content" in head:
        return "luarmor_v4_loader", "Luarmor V4 outer loader stub"
    if "This file was protected using Luraph Obfuscator v14.4.2" in head:
        return "luraph_v14_4_2", "Luraph 14.4.2 VM payload"
    if "This file was protected using Luraph Obfuscator v14.7" in head:
        return "luraph_v14_7", "Luraph 14.7 VM payload"
    if "This file was protected with MoonSec V3" in head:
        return "moonsec_v3", "MoonSec V3 VM payload"
    if "return setfenv(function(...)" in body and "setmetatable" in body:
        return "luraph_trampoline", "Luraph outer trampoline"
    if "Luarmor" in head and "key check library" in head:
        return "luarmor_key_check", "Luarmor script-key library"
    if body.strip().startswith("return '") or body.strip().startswith("return \""):
        return "raw_blob", "raw byte string (probably key material)"
    if "script_key" in body and len(body) < 500:
        return "script_key_init", "script_key initializer"
    return "clean_lua", "plain Lua source"


def main():
    manifest = json.loads((DUMPS / "manifest.json").read_text())
    captures = manifest["captures"]
    rows = []
    for cap in captures:
        n = cap["n"]
        h = cap["hash"]
        files = list(DUMPS.glob(f"{n:03d}_{h}.lua"))
        if not files:
            continue
        path = files[0]
        text = path.read_text(errors="replace")
        body = strip_header(text)
        kind, desc = classify(body)
        rows.append({
            "n": n,
            "hash": h,
            "size": cap["size"],
            "chunk_name": cap["chunk_name"],
            "time": cap["time"],
            "kind": kind,
            "description": desc,
            "file": path.name,
        })
    OUT.mkdir(parents=True, exist_ok=True)
    (OUT / "chunk_classification.json").write_text(json.dumps(rows, indent=2))
    for r in rows:
        print(f"#{r['n']:02d} [{r['hash']}] {r['size']:>8d}B  {r['kind']:<24s} {r['description']}")


if __name__ == "__main__":
    main()
