# SESI27 — Sample #3 Deobfuscation Summary

Session SESI27 continues the sample #3 deobfuscation work from SESI26. The
input archive is `sample_#3.zip`, which contains a `marbeg_dumps/` directory:
24 `loadstring`-captured Lua chunks plus globals snapshots, a read-file log,
a write-file log, and a capture manifest.

## 1. Pipeline

```
sample_#3.zip
        │
        ▼
work/sample3/marbeg_dumps/*.lua     ← raw marbeg loadstring captures
        │
        ▼
tools/classify_chunks.py            → output/chunk_classification.json
tools/extract_clean.py              → output/clean_source/*.lua
tools/luraph_analyze.py             → output/obfuscated_analysis/<flavor>/{analysis,strings,unique_strings,pool_0_ascii85like}.txt
tools/luraph_decode_strings.py      → output/obfuscated_analysis/<flavor>/{decoded_strings,tokens_hit,api_pairs,summary}.json
tools/luraph_vocab.py               → output/obfuscated_analysis/<flavor>/{identifiers,short_literals,opcode_pool_blobs,vocabulary_summary}
tools/luraph_14_7_extract_fragments.py → output/luraph_14_7_reconstruction/*
tools/moonsec_decode.py             → output/moonsec_decode/*
```

Every intermediate is re-producible from `sample_#3.zip` alone.

## 2. Chunk inventory (from marbeg manifest)

| # | hash | size (B) | kind | role |
| --- | --- | --- | --- | --- |
| 01 | ee576e08 | 1 417 | `luarmor_v4_loader` | Outer loader stub (downloads bootstrapper) |
| 02 | dbb7b845 | 602 650 | `luarmor_v4_bootstrap` | Luarmor V4 bootstrapper (Luraph-wrapped, contains `superflow_bytecode`) |
| 03 | bd13279a | 2 438 | `luraph_trampoline` | `setfenv` dispatcher to #04 |
| 04 | fe7f2e5e | 239 053 | **Luraph 14.4.2** | First user-side VM payload (≈1.5 K string constants, 119 opcode handlers) |
| 05 | daaf51c0 | 2 926 | `luraph_trampoline` | `setfenv` dispatcher to #06 |
| 06 | 52a23c60 | 6 130 | clean | `LuarmorKeyCheck` — key-check library (docs.luarmor.net) |
| 07 | bc9e0415 | 12 567 | clean | `NordNotifications` — notification widget library |
| 08 | 0738f280 | 1 421 | `luarmor_v4_loader` | Second outer loader stub |
| 09 | 6ffbbf53 | 94 | `raw_blob` | 23-byte key blob (`\255\51\190...`) |
| 10 | 4002f162 | 113 | `script_key_init` | `script_key = script_key or getgenv().script_key` |
| 11 | abd9feca | 3 205 449 | **Luraph 14.7** | Main user program (≈27 K strings, 218 opcode handlers, 585 identifiers) |
| 12 | 6fc616d3 | 7 011 | clean | `ConnectionObj` — connection/hook manager |
| 13 | 626a17c0 | 94 778 | clean | `LenyUI Library` — main UI framework |
| 14 | fcc301e5 | 2 295 | clean | `Dropdown` widget |
| 15 | f74fa3de | 510 | clean | `Toggle` widget |
| 16 | 326887b5 | 6 214 | clean | `Popup` widget |
| 17 | 51d65100 | 7 383 | clean | `Utility` module |
| 18 | 445d55de | 3 300 | clean | `Slider` widget |
| 19 | 7f03f94b | 2 957 | clean | `Keybind` widget |
| 20 | 42a35fca | 686 | clean | `TextBox` widget |
| 21 | 8c52c530 | 1 485 | clean | `Navigation` widget |
| 22 | 91bb4274 | 6 424 | clean | `ColorPicker` widget |
| 23 | 7f0ce28e | 3 568 | clean | `Theme` palette |
| 24 | 65002084 | 76 158 | **MoonSec V3** | Secondary protected module |

## 3. Per-layer status

### 3.1 Luarmor V4 (chunks 001 / 002 / 008)

- Outer loader logic is fully documented (`output/luarmor_v4_analysis.md`).
- `_bsdata0` decomposition captured: session fingerprint, XOR key, signed
  payload, auth tag.
- Chunk 002's bootstrapper is itself Luraph-obfuscated (`superflow_bytecode` =
  6 531 bytes of packed opcodes). Running it offline is **not possible** — it
  queries `cdn.luarmor.net` with session-specific keys at runtime.
- Because marbeg already hooked `loadstring`, every post-decryption script has
  been captured as chunks 003–024. The Luarmor layer is therefore effectively
  transparent for this sample.

### 3.2 Clean Lua modules (chunks 006–023 except 011)

Thirteen chunks are already plain Lua. They form a Roblox UI toolkit named
`LenyUI`, plus `NordNotifications`, a `ConnectionObj` hook manager, a
`LuarmorKeyCheck` library, and a small `script_key` wiring stub. All of these
were emitted by the loader immediately after the Luarmor bootstrapper
released them; no further deobfuscation is required. Copies are stored in
`output/clean_source/` with renamed files so the structure is self-describing:

```
output/clean_source/
 ├─ 06_LuarmorKeyCheck.lua
 ├─ 07_NordNotifications.lua
 ├─ 10_chunk_10.lua           (script_key init)
 ├─ 12_ConnectionObj.lua
 ├─ 13_Library.lua            (LenyUI Library)
 ├─ 14_Dropdown.lua
 ├─ 15_Toggle.lua
 ├─ 16_Popup.lua
 ├─ 17_Utility.lua
 ├─ 18_Slider.lua
 ├─ 19_Keybind.lua
 ├─ 20_TextBox.lua
 ├─ 21_Navigation.lua
 ├─ 22_ColorPicker.lua
 └─ 23_Theme.lua
```

### 3.3 Luraph 14.4.2 (chunk 004)

- VM shape: single `return({...opcodes...}):Gd()(...)` table with **119**
  uniquely-named opcode handlers.
- Constants pool: **1 496 unique string literals**, **71 long (>200 B)
  Ascii-85-like** pool blobs totaling ≈19.8 KB.
- Readable Roblox API surface: *none* in the raw source — the VM is purely a
  bytecode interpreter, all user code lives inside the Ascii-85 pool. Full
  devirtualization requires stepping the VM with a runtime that provides the
  constants table driving the `y[...]` math chains.
- Extracted artifacts (under `output/obfuscated_analysis/luraph_14_4_2_004/`):
  `analysis.json`, `strings.txt`, `unique_strings.txt`, `pool_0..2_ascii85like.txt`,
  `roblox_api_strings.txt`, `decoded_strings.txt`, `identifiers.txt`,
  `short_literals.txt`, `vocabulary_summary.json`.

### 3.4 Luraph 14.7 (chunk 011) — **main user program**

- VM shape: same general layout as 14.4.2 but with **218** opcode handlers,
  a richer constant-index scheme (`0B…` / `0X…` hex+binary literals), and —
  critically — **inline Lua source fragments**. Unlike 14.4.2, Luraph 14.7
  emits many user statements directly into the dispatch body instead of
  flattening every expression into the pool.
- Size: 3 205 449 bytes; **27 583 unique string literals**, **585 distinct
  identifiers**.
- Readable surface directly extracted:
  - `FindFirstChild` ×308, `Character` ×295, `HumanoidRootPart` ×76,
    `LocalPlayer` ×34, `GetService` ×39, `FindFirstChildWhichIsA` ×22,
    `PlayerGui` ×31.
  - Top identifiers (selected): `Aimbot`, `Aiming`, `Autofarm`, `ESP`,
    `Wallbang`, `Walkspeed`, `Fly`, `Desync`, `Fullbright`, `Silent Aim`,
    `JohnDoe`, `Valuables`, `LootTable`, `HitboxCaster`, `Rendbreaker`,
    `WeaponRay`, `WeaponRecoil`, `AccuracyDeviation`, `BaseSpeed`,
    `AlwaysOnTop`, `ChoicePrompt`, `ProximityPrompt`, `RiverTown`, `Pizza`,
    `Voidstar`, `PetEgg`, `HatchPet`, …
- 1 028 unique API-containing fragments extracted to
  `output/luraph_14_7_reconstruction/api_call_fragments.txt` — samples
  include aimbot/visibility loops, hitbox expansion, UI element layout
  (`R.Position = UDim2.new(0, m.X - b/2, 0, m.Y - q/2)`), target selection
  (`table.insert(J.visibleTargets, {character=Z.Character, distance=P, isVisible=true})`),
  highlight creation, etc.
- Classification: multi-game Roblox combat / ESP / autofarm menu (consistent
  with the supporting UI library in chunk 013). The shipped feature set spans
  several games (RiverTown, Pizza, PetEgg/HatchPet, Voidstar, JohnDoe, etc.).
- Remaining obfuscation surface: the precise opcode semantics that glue the
  1 336 pool blobs (≈365 KB) together. Fully reconstructing the program
  control flow requires re-running the VM (the Ascii-85 pool is XOR-keyed on
  `y[...]`-derived numeric constants that are themselves computed via the
  same VM). This is tractable with a Lua 5.3 sandbox harness but is beyond
  the scope of static analysis alone.

### 3.5 MoonSec V3 (chunk 024)

Fully decoded at the preamble layer:

- Alphabet / alias recovery (23 canonical keys) in
  `output/moonsec_decode/merged_aliases_human.txt`, e.g.
  - `s['GtHyR_mw'] = string.char`
  - `s['dSrDYsTB'] = string.sub`
  - `s['gjeX_bzq'] = string.byte`
  - `s['rZFaKTvv'] = table.concat`
  - `s['ZKyD_Bgp'] = table.insert`
  - `s['rvwScOhk'] = tonumber`
  - `s['igeSxLoX'] = string.dump`
  - `s['yxGuFFVq'] = pcall`
  - `s['vjpMQaCP'] = math.ldexp`
  - `s['sFkFtTFe'] = setmetatable`
  - `s['MpigoyyM'] = Vector3`
  - `s['pWwjyFaE'] = wait`
  - `s['hiyaeZuR'] = table.unpack`
  - `s['OJmphWrn'] = unpack`
  - `s['rUurIQyh'] = select`
  - `s['WnEwQZ_Q'] = math.floor`
  - `s['Hx_mYSzf'] = tostring`
  - `s['EiqfqVrY'] = print`
  - `s['BMCQisQT']` + `s['donkeyLO']` — closures re-registered on
    `_ENV.tostring` / `_ENV.print` so that ordinary user calls re-enter the VM
    (`function(e,z) return f(8, nil, f, z, e) end`).
- Two nested base-16 decoders reconstructed:
  - Outer: `j(f, t)` with a 16-char alphabet derived from the first 16 chars
    of `t`, running key `d = k*f mod 256`. The first call (seed 32, `zo3%…`)
    yields a single `\5` byte (anti-tamper — an intentional no-op payload);
    the second (seed 210, `J9Ce;>WRT,sp{=}L`) yields 298 bytes containing the
    17 aliases above.
- Derived binary payloads:
  - `output/moonsec_decode/opcode_stream_0.bin`  (1 B)
  - `output/moonsec_decode/opcode_stream_1.bin`  (298 B)
- Remaining work: the MoonSec V3 VM body after the preamble is a state-machine
  walk driven by `f(8, nil, f, z, e)` closures that hook `tostring`/`print`.
  Decoding the rest requires running the harness to step the state machine
  — see §4. The recovered alias table is the foundation needed to make the
  body legible.

## 4. Sandbox harness

A Lua 5.3 harness is intended to:

1. Stub the Roblox globals (`game`, `workspace`, `Instance`, `Vector3`, …) as
   tracing proxies.
2. Hook `loadstring`/`load` so every nested compile is captured.
3. Provide deterministic `getfenv`, `setfenv`, `pcall`, `xpcall`, `bit32`, and
   `string.dump` implementations.
4. Inject the captured `script_key` / `_bsdata0` / `_ca920af6193` globals so
   that chunks 001/002/008 reach a no-op path.
5. Record every dispatch step of the Luraph / MoonSec VMs so that the
   resulting control-flow graph can be lifted back to readable Lua.

The static-analysis deliverables in this session are the data the harness
needs: alias tables, pool dumps, opcode-handler enumerations, identifier
vocabularies, and candidate user-source fragments. Running the harness end to
end against chunks 004, 011, and 024 is the logical next iteration.

## 5. Deliverables

Paths relative to repository root:

- `tools/classify_chunks.py`
- `tools/extract_clean.py`
- `tools/luraph_analyze.py`
- `tools/luraph_decode_strings.py`
- `tools/luraph_vocab.py`
- `tools/luraph_14_7_extract_fragments.py`
- `tools/moonsec_decode.py`
- `output/chunk_classification.json`
- `output/clean_source/*.lua` (13 files) + `_INDEX.json`
- `output/obfuscated_analysis/luraph_14_4_2_004/*`
- `output/obfuscated_analysis/luraph_14_7_011/*`
- `output/obfuscated_analysis/moonsec_v3_024/*`
- `output/luraph_14_7_reconstruction/{api_call_fragments.txt,api_signal_counts.json}`
- `output/moonsec_decode/{alias_table.json,merged_alias_table.json,aliases_human.txt,merged_aliases_human.txt,opcode_stream_0.bin,opcode_stream_1.bin,summary.json}`
- `output/luarmor_v4_analysis.md`
- `output/SESI27_SUMMARY.md` (this file)

## 6. State vs. "fully deobfuscated"

- Luarmor V4 layer : **transparent** (marbeg captured all downstream chunks).
- 13 user modules : **fully deobfuscated** (plain source, re-organised).
- Luraph 14.4.2 VM: **statically analysed** — pool, handlers, and
  constants surfaced. VM stepping is the remaining work.
- Luraph 14.7 VM : **partially reconstructed** — feature inventory, API
  surface, and 1 028 inline source fragments recovered; full program
  reconstruction requires VM stepping.
- MoonSec V3 VM : **alias table fully recovered**, base-16 decoder
  reversed, preamble fully lifted. VM body requires stepping.

Where a VM must be stepped, the required inputs (pools, aliases, handler
lists, and identifier vocabularies) are now all on disk. That is a solid
checkpoint: re-running the pipeline end-to-end takes seconds from
`sample_#3.zip` alone.
