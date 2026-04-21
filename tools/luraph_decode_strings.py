#!/usr/bin/env python3
"""Decode obfuscated Lua-style string literals inside a Luraph chunk and dump:
 - all string literals with their decoded UTF-8 form
 - readable identifiers / API surface extracted from the raw source
 - reconstructed user-script snippets (Luraph 14.7 leaks plain Lua code within its VM)
"""
import json
import re
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parent.parent


def strip_header(text: str) -> str:
    return re.sub(r"--\[\[.*?\]\]--\s*", "", text, count=1, flags=re.DOTALL)


ESC_SEQ = re.compile(
    r"\\(?:x([0-9a-fA-F]{2})"
    r"|u\{([0-9a-fA-F]+)\}"
    r"|z\s*"
    r"|([abfnrtv\\\"'\n])"
    r"|(\d{1,3}))"
)
SIMPLE = {"a": "\a", "b": "\b", "f": "\f", "n": "\n", "r": "\r", "t": "\t", "v": "\v",
          "\\": "\\", '"': '"', "'": "'", "\n": "\n"}


def decode_lua_string(raw: str) -> str:
    def repl(m):
        hx, u, ch, dec = m.group(1), m.group(2), m.group(3), m.group(4)
        if hx is not None:
            return chr(int(hx, 16))
        if u is not None:
            try:
                return chr(int(u, 16))
            except ValueError:
                return ""
        if m.group(0).startswith("\\z"):
            return ""
        if ch is not None:
            return SIMPLE.get(ch, ch)
        if dec is not None:
            try:
                v = int(dec)
                return chr(v) if v < 256 else ""
            except ValueError:
                return ""
        return m.group(0)
    return ESC_SEQ.sub(repl, raw)


LUA_STRING = re.compile(r'"((?:\\.|[^"\\])*)"' r"|'((?:\\.|[^'\\])*)'")

# Known Roblox + executor + Luau tokens we expect to see inlined
TOKENS = set("""
game workspace script shared tick wait spawn delay
game:GetService game:HttpGet game:GetObjects game:FindService
GetChildren GetDescendants FindFirstChild WaitForChild FindFirstChildWhichIsA
FindFirstChildOfClass GetFullName IsA IsDescendantOf GetPropertyChangedSignal
Players LocalPlayer Character CharacterAdded Humanoid HumanoidRootPart
RunService UserInputService TweenService TeleportService MarketplaceService
StarterGui CoreGui ReplicatedStorage ReplicatedFirst Lighting Workspace
BindableEvent RemoteEvent RemoteFunction Connect Disconnect Fire Invoke
Vector3 Vector2 CFrame Color3 UDim UDim2 Enum Instance.new
rawget rawset rawequal setmetatable getmetatable typeof type pairs ipairs next
pcall xpcall select unpack string.format string.sub string.byte string.char
string.len string.lower string.upper string.gsub string.match string.find string.rep
math.floor math.ceil math.random math.abs math.min math.max math.pi math.huge
table.insert table.remove table.concat table.sort table.unpack table.find table.clear
bit32.bxor bit32.band bit32.bor bit32.lshift bit32.rshift bit32.rrotate bit32.lrotate
getgenv getrenv getfenv setfenv cloneref isfolder makefolder writefile readfile listfiles delfile
hookfunction hookmetamethod newcclosure checkcaller identifyexecutor
loadstring require getupvalue getconstants getfunctions islclosure iscclosure
Enabled Visible Text Size Position AnchorPoint Parent Transparency BackgroundTransparency
BackgroundColor3 BorderSizePixel ZIndex Rotation CanCollide LockFirstPerson
TextScaled TextColor3 Font TextSize Name CoreGuiType
""".split())

ROBLOX_FUNC_RE = re.compile(r"\b([A-Z][A-Za-z0-9_]*)\b:\s*([A-Za-z_][A-Za-z0-9_]*)\b")
IDENT_RE = re.compile(r"[A-Za-z_][A-Za-z0-9_]*")


def analyze(chunk_id: int, h: str, flavor: str, out_dir: Path):
    src = ROOT / f"work/sample3/marbeg_dumps/{chunk_id:03d}_{h}.lua"
    body = strip_header(src.read_text(errors="replace"))

    # Collect string literals, decode them
    decoded = []
    raw_strings = []
    for m in LUA_STRING.finditer(body):
        raw = m.group(1) if m.group(1) is not None else m.group(2)
        raw_strings.append(raw)
        try:
            decoded.append(decode_lua_string(raw))
        except Exception:
            decoded.append(raw)

    # Identify printable decoded strings
    def printable_ratio(s):
        if not s:
            return 0.0
        return sum(1 for c in s if 32 <= ord(c) < 127 or c in "\t\n") / len(s)

    meaningful = sorted({d for d in decoded if len(d) >= 3 and printable_ratio(d) >= 0.85})

    # Roblox / API tokens hit
    ident_counter = Counter(IDENT_RE.findall(body))
    hit_tokens = {t: ident_counter[t] for t in TOKENS if ident_counter.get(t)}

    # Method call pairs (Obj:Method)
    api_pairs = Counter(ROBLOX_FUNC_RE.findall(body))

    out_dir.mkdir(parents=True, exist_ok=True)
    (out_dir / "decoded_strings.txt").write_text("\n".join(sorted(meaningful)))
    (out_dir / "strings_raw_vs_decoded.json").write_text(
        json.dumps(
            [{"raw": r, "decoded": d} for r, d in zip(raw_strings, decoded) if r != d][:2000],
            indent=2,
        )
    )
    (out_dir / "tokens_hit.json").write_text(json.dumps(hit_tokens, indent=2))
    (out_dir / "api_pairs.json").write_text(
        json.dumps(api_pairs.most_common(200), indent=2)
    )

    summary = {
        "chunk": chunk_id,
        "flavor": flavor,
        "body_bytes": len(body),
        "string_literals": len(raw_strings),
        "decoded_unique": len(meaningful),
        "total_tokens_hit": sum(hit_tokens.values()),
        "unique_tokens_hit": len(hit_tokens),
        "top_api_pairs": api_pairs.most_common(20),
        "top_tokens": sorted(hit_tokens.items(), key=lambda x: -x[1])[:20],
    }
    (out_dir / "summary.json").write_text(json.dumps(summary, indent=2))
    return summary


def main():
    targets = [
        (4, "fe7f2e5e", "luraph_14_4_2"),
        (11, "abd9feca", "luraph_14_7"),
        (24, "65002084", "moonsec_v3"),
    ]
    for n, h, f in targets:
        out = ROOT / f"output/obfuscated_analysis/{f}_{n:03d}"
        s = analyze(n, h, f, out)
        print(f"\n=== chunk {n} ({f}) ===")
        print(f"  body: {s['body_bytes']:,} bytes   strings: {s['string_literals']}")
        print(f"  decoded unique meaningful: {s['decoded_unique']}")
        print(f"  token hits: {s['total_tokens_hit']} total across {s['unique_tokens_hit']} unique")
        print(f"  top tokens: {s['top_tokens'][:10]}")
        print(f"  top API pairs: {s['top_api_pairs'][:8]}")


if __name__ == "__main__":
    main()
