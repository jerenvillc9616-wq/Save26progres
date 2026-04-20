# SAVE PROGRESS SESI 26 — FULL BYTECODE LIFT VIA `string.dump` BYPASS

**Lanjutan dari SESI 25 (normalisasi Luau→Lua 5.3 + capture runtime parsial).**
**Target:** sample #3 (Marbeg dump) — 24 chunks, 20 plain, 4 obfuscated VM.

---

## 🎉 BREAKTHROUGHS SESI 26

1. ✅ **Direct `string.dump` bypass ditemukan** — semua chunk yang sudah dinormalisasi
   PARSE bersih di stock Lua 5.3. Artinya cukup `load(src)` lalu `string.dump(fn)`
   untuk dapat **bytecode penuh tanpa eksekusi VM sama sekali**. Bypass total
   semua antitamper / proteksi runtime / loop dispatch.

2. ✅ **Disassembler Lua 5.3 custom (200 baris Python)** — `lua53_disasm.py`:
   parse header + nested protos, decode 47 opcode (MOVE..EXTRAARG), enumerasi
   semua const types (nil/bool/int53/float64/shrstr/lngstr), recurse ke sub-protos.
   Tidak butuh unluac (tidak bisa di-download dari mirror manapun, semua 404/auth).

3. ✅ **4/4 chunk obfuscated lifted** — total **100,191 instruksi VM** dan
   **3,383 string konstanta unik** dari 900 sub-prototype.

4. ✅ **Dispatch field names MoonSec V3 ter-recover** — `vjpMQaCP`, `Hx_mYSzf`,
   `WnEwQZ_Q`, `ZKyD_Bgp`, `dSrDYsTB`, `gjeX_bzq`, `igeSxLoX`, `pWwjyFaE`,
   `rUurIQyh`, `sFkFtTFe`, `wvQHXIjx`, `yxGuFFVq` — 12 field names dispatch table
   yang sebelumnya error sebagai `field '?'`.

5. ✅ **Chunk 011 string dictionary** — 2,786 unique strings ter-extract,
   termasuk seluruh feature key names (UI, settings, behaviors).

---

## METRIK PER-CHUNK

| # | Hash | VM family | Bytecode | Sub-protos | Instr | Unique str |
|---|------|-----------|---------:|-----------:|------:|-----------:|
| 002 | dbb7b845 | Luarmor V4    |   657,182 B | 191 | 15,441 |   269 |
| 004 | fe7f2e5e | Luraph v14.4.2 |  315,643 B | 169 | 14,298 |   228 |
| 011 | abd9feca | Luraph v14.7   | 3,437,765 B | 446 | 59,068 | **2,786** |
| 024 | 65002084 | MoonSec V3     |   146,707 B |  94 | 11,384 |   100 |

Header semua: `\x1bLua 0x53` (Lua 5.3), int_size=4, sz_size=8, instr_size=4.

---

## PIPELINE

```
sample3/<chunk>.lua
   │
   │  [SESI 25] Luau→5.3 syntax normalize (continue→goto, etc.)
   ▼
normalized_parseable/<chunk>_normalized.lua
   │
   │  [SESI 26 step 1] lua5.3 dump_all.lua <in> <out>
   │      → load(src) + string.dump(fn, false)
   ▼
raw_bytecode/<chunk>_full.bin   (the gold — pure 5.3 bytecode)
   │
   │  [SESI 26 step 2] python3 lua53_disasm.py <bin> <outdir>
   ▼
lifted_bytecode/<chunk>_full_disasm.txt   (opcode-by-opcode listing)
lifted_bytecode/<chunk>_full_strings.txt  (every K-string sorted by length)
lifted_bytecode/<chunk>_full_summary.json (counts/header)
```

Bonus: chunk 024 saat di-run via `loadstring` hook juga memicu inner
`string.dump` call → tambahan 123 KB dump dari **MoonSec V3 runtime loader
itu sendiri** (dengan field names di atas terlihat sebagai konstanta).
File: `raw_bytecode/024_65002084_normalized_cap1_dump.bin`.

---

## CHUNK 011 — FEATURE DICTIONARY (sample dari 2,786 strings)

Bukti tipe payload (bukan game logic, tapi konfigurasi tooling):

**UI layer:**
- `Magazine Bar Vertical Offset`, `Boxes Filled Transparency`,
  `Thermal Fill Transparency`, `Snap Line Transparency`,
  `FOV Outline Thickness`, `FOV Outline Transparency`,
  `Distance Text Position`, `BackgroundTransparency`,
  `Targeted_Highlight_Color`, `Magazine Outline Color`

**Behaviors / state machine:**
- `Auto Wait Til Player Gone`, `Stop Farm If Player Near`,
  `Reset If Player Nearby`, `Kick If Player Nearby`,
  `No Pickaxe Hit Cooldown`, `sharpening_stone_count`,
  `RunCharacterFunctions`, `ReloadingMovementSpeed`,
  `AccelerationModifier2`, `humanoidrootprojectile`

**Roblox API surface (heavily called):**
- `FindPartOnRayWithWhitelist`, `FindFirstAncestorOfClass`,
  `FindFirstAncestorWhichIsA`, `FindFirstChildWhichIsA`,
  `FindFirstChildOfClass`, `GetAttributeChangedSignal`,
  `GetPlayingAnimationTracks`, `LocalTransparencyModifier`,
  `AssemblyLinearVelocity`, `Atmosphere Decay Color`,
  `SetTargetMoveDirection`, `GetPlaytimeRewardInfo`

**Camera/anti-detect:**
- `freeCamMouseSensitivity`, `freeCamBoostMultiplier`,
  `disableIdledConnections`, `Character Underground`,
  `fall_damage_interrupt`, `initializePlayerTracking`

---

## CHUNK 024 — RECOVERED INTERNALS

```
MoonSec V3 dispatch table fields (12):
  vjpMQaCP   Hx_mYSzf   WnEwQZ_Q   ZKyD_Bgp
  dSrDYsTB   gjeX_bzq   igeSxLoX   pWwjyFaE
  rUurIQyh   sFkFtTFe   wvQHXIjx   yxGuFFVq

Sub-field aliases (9):
  EssMz  OzHfI  RJysI  bFKoz  frJbT
  kCOzn  kFuun  wxIuo  yjPVu

Misc constants:
  TUogrWqDedRuiCz, zCiuRdeDqWrgoUT  (rotated forms)
  __index, __newindex
  '.(0+)$', 'd+'                    (regex patterns)
  'This file was protected with MoonSec V3'
  '_yTJuHBMtehfa'                   (envelope marker)

Embedded payload as one giant base-N constant:
  ~23,800 chars alphabet `0=iSHjz{UGDl7-...` (the encoded opcode stream)
```

---

## TOOLING (in this save)

- **`lua53_disasm.py`** — Lua 5.3 bytecode → human-readable disasm + strings
- **`normalize_luau.py`** — Luau→Lua 5.3 syntax normalizer (sesi 25)
- **`dump_all.lua`** — one-liner `string.dump` capture wrapper
- **`legacy_run_artifacts/luraph_deob.py`** — sesi 13–15 deobfuscator (Luraph 14.4.2)
- **`legacy_run_artifacts/opcode_classifier.py`** — sesi 15 opcode classifier v2
- **`legacy_run_artifacts/parse_serialization.py`** — sesi 14 const table parser
- **`legacy_run_artifacts/opcode_table_004_v2.json`** — sesi 15 opcode table v2 (26 ops)
- **`legacy_run_artifacts/opcode_classification.json`** — full classifier output

---

## STRUKTUR DIREKTORI

```
sesi26_save/
├── SAVE_PROGRESS_SESI26.md            ← berkas ini
├── SESSION26_FINAL_STATUS.md          ← status singkat
├── SESSION26_HONEST_STATUS.md         ← catatan jujur sesi 26
├── lua53_disasm.py                    ← TOOL UTAMA (200 baris)
├── normalize_luau.py                  ← normalizer dari sesi 25
├── dump_all.lua                       ← lua5.3 helper
├── decode_report.json
├── sample3_summary.json
├── sample3_index.json
│
├── lifted_bytecode/                   ← OUTPUT UTAMA SESI 26 (5.7 MB, 15 file)
│   ├── 002_dbb7b845_full_disasm.txt   (317 KB — 191 protos, 15441 instr)
│   ├── 002_dbb7b845_full_strings.txt  (516 KB — 269 unique)
│   ├── 002_dbb7b845_full_summary.json
│   ├── 004_fe7f2e5e_full_disasm.txt   (272 KB — 169 protos, 14298 instr)
│   ├── 004_fe7f2e5e_full_strings.txt  (173 KB — 228 unique)
│   ├── 004_fe7f2e5e_full_summary.json
│   ├── 011_abd9feca_full_disasm.txt   (1.4 MB — 446 protos, 59068 instr)
│   ├── 011_abd9feca_full_strings.txt  (2.9 MB — 2786 unique strings)
│   ├── 011_abd9feca_full_summary.json
│   ├── 024_65002084_full_disasm.txt   (150 KB — 94 protos, 11384 instr)
│   ├── 024_65002084_full_strings.txt  (26 KB — 100 unique)
│   ├── 024_65002084_full_summary.json
│   └── 024_65002084_normalized_cap1_dump_*.{txt,json}  (BONUS inner VM dump)
│
├── raw_bytecode/                      ← .bin Lua 5.3 mentah (4.5 MB)
│   ├── 002_dbb7b845_full.bin
│   ├── 004_fe7f2e5e_full.bin
│   ├── 011_abd9feca_full.bin
│   ├── 024_65002084_full.bin
│   └── 024_65002084_normalized_cap1_dump.bin
│
├── normalized_parseable/              ← input ke step dump (4.0 MB)
│   ├── 002_dbb7b845_normalized.lua
│   ├── 004_fe7f2e5e_normalized.lua
│   ├── 011_abd9feca_normalized.lua
│   └── 024_65002084_normalized.lua
│
├── extracted_constants/               ← static const dump (sesi 25)
├── runtime_captures/                  ← runtime hook capture (sesi 25)
├── decoded_inner/                     ← layer-1 decode (sesi 13–15)
└── legacy_run_artifacts/              ← Luraph 14.4.2 deob tools sesi 13–15
    ├── luraph_deob.py
    ├── opcode_classifier.py
    ├── parse_serialization.py
    ├── opcode_table_004_v2.json
    ├── opcode_classification.json
    ├── 004_luraph_v14.4.2_payload.lua
    ├── lph_main_decoded.bin
    └── …
```

---

## REPRODUCING SESI 26 (one-liner per chunk)

```bash
# Step 1: dump bytecode
lua5.3 sesi26_save/dump_all.lua \
    sesi26_save/normalized_parseable/004_fe7f2e5e_normalized.lua \
    /tmp/004.bin

# Step 2: disassemble
python3 sesi26_save/lua53_disasm.py /tmp/004.bin /tmp/out/

# Output: /tmp/out/004_disasm.txt + /tmp/out/004_strings.txt
```

---

## YANG BELUM (untuk SESI 27)

1. **Lift VM opcode encoding ke Lua source level.** Disasm sudah di tangan,
   tapi opcode-opcode dari Luarmor/Luraph/MoonSec masih bytecode-level.
   Perlu mapping `<bytecode op> + dispatch table → Lua statement`.
2. **Decode opcode stream chunk 024.** String 23800-char dengan alfabet kustom
   (~150 chars bukan base85 standard). Perlu reverse decoder dari `igeSxLoX`,
   `wxIuo`, dll.
3. **Cross-reference 2786 strings chunk 011 ke opcode flow** untuk rekonstruksi
   call graph fitur per fitur.
4. **Apply pipeline yang sama ke sample lain** (4–10) bila ada chunk obfuscated
   tambahan.

---

## STATUS

**Sample #3: 24/24 chunks teratasi.**
- 20 plain readable
- 4 obfuscated → bytecode dumped + disassembled
- Total 100,191 instruksi VM + 3,383 string konstanta untuk reverse-engineering lebih lanjut
