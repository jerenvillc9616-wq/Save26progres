#!/usr/bin/env python3
"""Copy plain-Lua chunks to output/clean_source/ with meaningful names derived from content."""
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DUMPS = ROOT / "work/sample3/marbeg_dumps"
OUT = ROOT / "output/clean_source"
CLASS = ROOT / "output/chunk_classification.json"


def strip_header(text: str):
    m = re.match(r"--\[\[\s*MARBEG DUMP.*?\]\]--\s*", text, re.DOTALL)
    return text[m.end():] if m else text


def infer_module_name(body: str, n: int) -> str:
    patterns = [
        (r"local (\w+)\s*=\s*\{\}\s*\n\s*\1\.__index\s*=\s*\1", 1),
        (r"local Library\s*=\s*\{", "Library"),
        (r"local Theme\s*=\s*\{", "Theme"),
        (r"local ConnectionHandler", "ConnectionHandler"),
        (r"local ScreenGui\s*=\s*game:GetObjects", "MainUI"),
        (r"key check library used by Luarmor", "LuarmorKeyCheck"),
    ]
    for pat, grp in patterns:
        m = re.search(pat, body)
        if m:
            return m.group(grp) if isinstance(grp, int) else grp
    return f"chunk_{n:02d}"


def main():
    rows = json.loads(CLASS.read_text())
    OUT.mkdir(parents=True, exist_ok=True)
    index = []
    for r in rows:
        if r["kind"] not in ("clean_lua", "script_key_init"):
            continue
        src = DUMPS / r["file"]
        body = strip_header(src.read_text(errors="replace"))
        name = infer_module_name(body, r["n"])
        # keep 006 as LuarmorKeyCheck even though it's mostly whitespace
        if r["n"] == 6:
            name = "LuarmorKeyCheck"
        out_name = f"{r['n']:02d}_{name}.lua"
        (OUT / out_name).write_text(body)
        index.append({"n": r["n"], "hash": r["hash"], "name": name, "file": out_name, "bytes": len(body)})
        print(f"#{r['n']:02d} -> {out_name} ({len(body)} B)")
    (OUT / "_INDEX.json").write_text(json.dumps(index, indent=2))


if __name__ == "__main__":
    main()
