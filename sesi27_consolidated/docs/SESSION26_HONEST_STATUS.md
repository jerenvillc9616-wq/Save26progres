# Sample 3 — Session 26 Honest Status (final)

## Final tally
| Category | Count | Notes |
|----------|-------|-------|
| Plain-readable chunks | 20 / 24 | done |
| Obfuscated chunks normalized & parseable | 4 / 24 | parses under stock Lua 5.3 |
| Runtime payload captures | 1 | chunk 004 outer loader stub (2926 B) |
| Static bytecode blobs extracted | 2 / 4 | 002 (encrypted) + 024 (encoded) |
| Constants/strings catalogued | 4 / 4 | full string-literal listings |
| Fully de-virtualised | 0 / 4 | requires per-VM static lifters |

## Per-chunk detail
| # | Hash | VM | Normalized | Runtime cap | Static blob | Strings catalogued |
|---|------|----|---|---|---|---|
| 002 | dbb7b845 | Luarmor V4 | yes | no | 6266 B encrypted | 45 strings |
| 004 | fe7f2e5e | Luraph v14.4.2 | yes | **1** (2926 B) | none (numeric consts only) | 35 strings |
| 011 | abd9feca | Luraph v14.7 | yes | no | none (per-instruction inlined) | 2663 strings |
| 024 | 65002084 | MoonSec V3 | yes | no | 23800 B encoded (85-char alphabet) | 37 strings |

## What was completed this session
1. **Normalizer feature-complete** (`runners/normalize_luau.py`): rewrites compound-assigns, numeric underscores, escape sequences, scope-aware continue, variadic bit32 shim, buffer stub.
2. **All 4 obfuscated chunks now parse cleanly** under Lua 5.3.
3. **Luau sandbox** (nix-shell -p luau) with Roblox stubs + capture-and-throw → recovered chunk 004's first `loadstring` payload (2926 B Luraph loader stub).
4. **Static constant extraction** with linear tokenizer:
   - 002: 6266-byte encrypted bytecode blob (entropy 7.969)
   - 024: 23800-byte 85-char-alphabet opcode stream
   - 011/004: per-instruction string + numeric constants catalogued

## Hard ceiling
- 002, 011, 024 VMs do not re-enter `loadstring` — runtime hooks cannot exfil their payloads.
- 002's bytecode is encrypted (random-looking entropy); needs key-schedule recovery.
- 024's bytecode is encoded text; needs alphabet/decoder algo lift.
- 011 has no central blob; each instruction's args are inlined.
- Full de-virtualisation requires writing one **static lifter** per VM family. Each is multi-day.

## Deliverables
```
deliverable_final/sample3/
├── normalized_parseable/                     # 4 normalized .lua files (parse OK)
│   ├── 002_dbb7b845_normalized.lua
│   ├── 004_fe7f2e5e_normalized.lua
│   ├── 011_abd9feca_normalized.lua
│   └── 024_65002084_normalized.lua
├── runtime_captures/
│   ├── 004_fe7f2e5e_loadstring_capture1.lua  # 2926 B recovered payload
│   └── README.md
└── extracted_constants/
    ├── 002_dbb7b845_bytecode_largest.bin     # 6266 B encrypted
    ├── 002_dbb7b845_strings.txt
    ├── 004_fe7f2e5e_strings.txt
    ├── 011_abd9feca_strings.txt
    ├── 024_65002084_bytecode_largest.bin     # 23800 B encoded
    ├── 024_65002084_strings.txt
    ├── SUMMARY.json
    └── README.md
```

## Tooling created
- `sesi26_work/runners/normalize_luau.py` — Luau→Lua 5.3 normalizer
- `sesi26_work/runners/sandbox_v3.lua` — Lua 5.3 sandbox (legacy)
- `/tmp/luau_caps5/*.luau` — Luau sandbox runners with Roblox stubs
- ad-hoc Python tokenizer for static constant extraction
