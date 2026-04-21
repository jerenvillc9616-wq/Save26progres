#!/usr/bin/env python3
"""Static-analyze a Luraph-protected chunk: enumerate opcodes, extract string pool,
identify readable Roblox API references, and dump metadata."""
import json
import re
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def load(chunk_path: Path) -> str:
    txt = chunk_path.read_text(errors="replace")
    return re.sub(r"--\[\[.*?\]\]--\s*", "", txt, count=1, flags=re.DOTALL)


LUA_STRING = re.compile(
    r'"((?:\\.|[^"\\])*)"'  # double-quoted
    r"|'((?:\\.|[^'\\])*)'"  # single-quoted
)

# Roblox API surface markers that reliably occur in user scripts.
ROBLOX_SIGNS = [
    "game:GetService", "game:HttpGet", "game:GetObjects", "workspace.", "Character",
    "LocalPlayer", "HumanoidRootPart", "Humanoid", "FindFirstChild", "GetChildren",
    "UserInputService", "TweenService", "RunService", "RenderStepped", "Heartbeat",
    "PreRender", "Players", "BindableEvent", "RemoteEvent", "RemoteFunction",
    "CoreGui", "StarterGui", "Vector3", "Vector2", "CFrame", "Color3", "UDim2",
    "Instance.new", "rawget", "rawset", "setmetatable", "getmetatable",
    "hookfunction", "hookmetamethod", "getgenv", "getrenv", "getfenv", "setfenv",
    "loadstring", "string.char", "string.byte", "string.sub", "bit32.",
    "math.floor", "math.random", "pcall", "xpcall", "select",
]


def extract_strings(body: str):
    out = []
    for m in LUA_STRING.finditer(body):
        s = m.group(1) if m.group(1) is not None else m.group(2)
        out.append(s)
    return out


def extract_method_names(body: str):
    # Top-level `return({key=function(...)`, `,key=function(...)`, `,keyname=...`
    # Identify all opcode dispatch keys: `<id>=function`
    keys = re.findall(r"([A-Za-z_][A-Za-z0-9_]*)\s*=\s*function\s*\(", body)
    # Also named method calls: c:method(, self:method(
    mcalls = re.findall(r"[A-Za-z_][A-Za-z0-9_]*:([A-Za-z_][A-Za-z0-9_]*)\(", body)
    return Counter(keys), Counter(mcalls)


def analyze(chunk_id: int, chunk_hash: str, flavor: str):
    src = ROOT / f"work/sample3/marbeg_dumps/{chunk_id:03d}_{chunk_hash}.lua"
    body = load(src)
    strings = extract_strings(body)
    keys, mcalls = extract_method_names(body)

    # Identify the large "pool" strings (heuristic: longest Ascii85-looking strings)
    ascii85_re = re.compile(r"^[!-uz]+$")
    pool_candidates = [(len(s), s) for s in strings if len(s) > 200 and ascii85_re.match(s)]
    pool_candidates.sort(reverse=True)

    # Find string.byte-style numeric pool
    byte_pools = re.findall(r"\"((?:\\\d{1,3}){40,})\"", body)

    # Find readable Roblox surface words
    roblox_hits = Counter()
    for s in strings:
        for sign in ROBLOX_SIGNS:
            if sign in s:
                roblox_hits[sign] += 1

    info = {
        "chunk": chunk_id,
        "hash": chunk_hash,
        "flavor": flavor,
        "body_bytes": len(body),
        "total_string_literals": len(strings),
        "unique_strings": len(set(strings)),
        "opcode_dispatch_keys": len(keys),
        "top_opcode_keys": keys.most_common(30),
        "top_methods_called": mcalls.most_common(30),
        "longest_pool_strings": [(n, s[:80] + ("..." if len(s) > 80 else "")) for n, s in pool_candidates[:5]],
        "byte_pool_count": len(byte_pools),
        "byte_pool_bytes_total": sum(len(b) for b in byte_pools),
        "readable_roblox_api_hits": dict(roblox_hits),
    }

    out_dir = ROOT / f"output/obfuscated_analysis/{flavor}_{chunk_id:03d}"
    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / "analysis.json").write_text(json.dumps(info, indent=2))
    (out_dir / "strings.txt").write_text("\n".join(strings))
    (out_dir / "unique_strings.txt").write_text("\n".join(sorted(set(strings))))

    # Export largest pool(s) raw
    for i, (n, s) in enumerate(pool_candidates[:3]):
        full = sorted([x for x in strings if ascii85_re.match(x) and len(x) > 200], key=len, reverse=True)
        if i < len(full):
            (out_dir / f"pool_{i}_ascii85like.txt").write_text(full[i])

    # Roblox-API-referencing strings
    roblox_strings = sorted({s for s in strings if any(sig in s for sig in ROBLOX_SIGNS)})
    (out_dir / "roblox_api_strings.txt").write_text("\n".join(roblox_strings))

    return info


def main():
    targets = [
        (4, "fe7f2e5e", "luraph_14_4_2"),
        (11, "abd9feca", "luraph_14_7"),
    ]
    for n, h, f in targets:
        info = analyze(n, h, f)
        print(f"\n=== chunk {n} ({f}) ===")
        print(f"  body: {info['body_bytes']} bytes")
        print(f"  string literals: {info['total_string_literals']} ({info['unique_strings']} unique)")
        print(f"  opcode dispatch keys: {info['opcode_dispatch_keys']}")
        print(f"  pool candidates (top): {[x[0] for x in info['longest_pool_strings']]}")
        print(f"  byte-pool strings: {info['byte_pool_count']} ({info['byte_pool_bytes_total']}B)")
        print(f"  readable Roblox API surface hits: {sum(info['readable_roblox_api_hits'].values())}")


if __name__ == "__main__":
    main()
