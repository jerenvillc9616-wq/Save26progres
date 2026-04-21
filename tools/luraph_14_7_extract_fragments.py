#!/usr/bin/env python3
"""Luraph 14.7 emits user Lua source as inline fragments interleaved within the
VM's giant dispatch `elseif` chain. Extract every top-level statement / expression
that contains Roblox API surface as a partial reconstruction of the protected
program."""
import json
import re
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "work/sample3/marbeg_dumps/011_abd9feca.lua"
OUT = ROOT / "output/luraph_14_7_reconstruction"

SIGNALS = [
    "FindFirstChild", "FindFirstChildWhichIsA", "GetService", "HumanoidRootPart",
    "LocalPlayer", "Character", "PlayerGui", "game:", "workspace",
    "Humanoid", "TweenService", "UserInputService", "RunService",
    "RemoteEvent", "RemoteFunction", "BindableEvent",
    "CFrame.new", "Vector3.new", "Vector2.new", "UDim2.new", "Color3.",
    "Instance.new", "hookfunction", "hookmetamethod", "getgenv", "getrenv",
    "cloneref", "writefile", "readfile", "loadstring", "string.format",
    "math.random", "math.floor", "math.rad", "math.deg",
    "table.insert", "table.remove", "setmetatable",
]


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    body = SRC.read_text(errors="replace")
    # Split on statement boundaries: semicolons & newlines & `elseif`/`else`/`then`/`end`
    # Keep original substring positions for context.
    fragments = re.split(r"(?:;|\n|\\\n)", body)
    hits = []
    per_sig = Counter()
    for frag in fragments:
        s = frag.strip()
        if not s:
            continue
        for sig in SIGNALS:
            if sig in s:
                hits.append(s)
                per_sig[sig] += 1
                break
    # Deduplicate (preserving order) and limit verbosity
    seen = set()
    uniq = []
    for h in hits:
        if h not in seen and len(h) < 2000:
            seen.add(h)
            uniq.append(h)
    (OUT / "api_call_fragments.txt").write_text("\n\n".join(uniq))
    (OUT / "api_signal_counts.json").write_text(json.dumps(per_sig.most_common(), indent=2))
    print(f"Wrote {len(uniq)} unique API-containing fragments to {OUT/'api_call_fragments.txt'}")
    print("Top signals:")
    for sig, n in per_sig.most_common(15):
        print(f"  {n:4d} {sig}")


if __name__ == "__main__":
    main()
