# Progress Deobfuscate — Max Hub (sample #3 & #4)

**Status commit terakhir**: `6c8d86b` — Sesi 27b: add obfuscator technical writeup
**Branch**: `claude/first-mobile-setup-5nTsV`
**Remote**: synced ✅

---

## Progres Overall

| Sample | % Terdeobfuscate | Catatan |
|--------|-----------------:|---------|
| **#3 (marbeg, 24 chunk)** | **~60%** | 20 clear + 4 obfuscated (bytecode-lift only) |
| **#4 (dumpace, 38 chunk)** | **~55%** | Overlap dengan #3 + 1 chunk baru `22483b9e` |

---

## Breakdown per layer

| Layer | Status |
|-------|--------|
| UI library (`ui_library_main.lua` 3,175 baris) | ✅ 100% readable |
| 8 komponen UI (dropdown/toggle/slider/keybind/textbox/colorpicker...) | ✅ 100% readable |
| Leny-UI (popup/utility/navigation) | ✅ 100% readable |
| Notifications, connection hook, theme | ✅ 100% readable |
| `main_logic_recovered.lua` (345KB, 1200 fragment) | ⚠️ ~70% — variabel 1-huruf, string indirection |
| Bytecode lift chunk 002 (Luarmor V4) | ✅ 657KB bytecode + disasm + strings |
| Bytecode lift chunk 004 (Luraph v14.4.2) | ✅ 316KB |
| Bytecode lift chunk 011 (Luraph v14.7) | ✅ 3.4MB, 59,068 instruksi, 2,786 string |
| Bytecode lift chunk 024 (MoonSec V3) | ✅ 147KB |
| Bytecode lift chunk 22483b9e sample #4 (Luraph v14.7) | ✅ 669KB, 14,649 instruksi |
| Source lift (bytecode → Lua source) | ❌ 0% — butuh lifter custom per-VM |
| Obfuscator technical writeup | ✅ 100% (`sesi27_consolidated/docs/OBFUSCATOR_WRITEUP.md`) |

---

## Struktur repo

```
Save26progres/
├── sample_#3.zip                    24 marbeg dump raw
├── dumpace.zip                       sample #4 raw
├── sample3_extracted/                unpack #3
├── sample4_extracted/                unpack #4
├── deobfuscated/                     UI + komponen clear (READY)
│   ├── ui_library_main.lua          3,175 baris
│   ├── main_logic_recovered.lua     345KB fragment
│   ├── component_*.lua               8 komponen
│   ├── leny_ui_*.lua                 3 Leny-UI
│   ├── theme_colors.lua, nord_notifications.lua, connection_hook_manager.lua
│   └── README.md
├── analysis/                         static analysis
│   ├── luraph_payloads_analysis.md  feature catalog (462 UI label)
│   ├── 024_moonsec_analysis.md      MoonSec struktur
│   ├── Luraph_v14.7_strings.txt     31,523 string
│   ├── Luraph_v14.4.2_strings.txt   1,748 string
│   ├── Luarmor_V4_strings.txt       7,814 string
│   └── 024_moonsec_strings.txt
├── sesi27_consolidated/              master artifact
│   ├── README.md                     master doc
│   ├── sample3_lifted/              4 chunk bytecode-lift (16 file, 11MB)
│   ├── sample4_lifted/              chunk 22483b9e + kecil (6 file, 2MB)
│   ├── tools/                        pipeline scripts (reproducible)
│   └── docs/
│       ├── SAVE_PROGRESS_SESI26.md
│       ├── SESSION26_HONEST_STATUS.md
│       └── OBFUSCATOR_WRITEUP.md    NEW — writeup teknis 4 obfuscator
└── PROGRESS.md                       ← file ini
```

---

## Commit timeline

| Commit | Sesi | Deskripsi |
|--------|------|-----------|
| `2a32e91` | — | Extract sample_#3.zip for deobfuscation analysis |
| `ee817d9` | Awal | Deobfuscate sample_#3: 13 clear modules + static analysis |
| `15be853` | Mid | Recover 345KB of MaxHub game logic from Luraph v14.7 |
| `79505cf` | Sesi 27 | Consolidate sample #3 lifted + process sample #4 dumpace |
| `6c8d86b` | Sesi 27b | Add obfuscator technical writeup |

---

## Yang masih bisa dilakukan (jika mau lanjut)

| Tugas | Effort | Value |
|-------|-------:|-------|
| Demangle variabel `main_logic_recovered.lua` | 2-4 jam | Medium — bikin fragment lebih readable |
| MoonSec V3 opcode enumeration | 1-2 hari | High — decoder bytecode stream |
| Luraph v14.7 lifter custom | 3-7 hari | Very High — source recovery penuh |
| Cross-reference string dict ke call graph | 4-6 jam | Medium |

---

## Yang TIDAK dilakukan (dan kenapa)

- **Functional rebuild** dari logic recovered → bikin cheat jalan di Delta
- **Key bypass** Luarmor → aktifkan cheat tanpa bayar
- **Detection evasion enhancement** pada anti-detect features

Alasan: target ini = Roblox multi-player cheat hub (aimbot, silent aim,
kill aura, anti-detect). Rev-engineering untuk belajar obfuscator = ada
value edukatif. Menjadikan cheat functional/usable = harm user lain di
multiplayer. Saya stop di batas itu.

---

## Save progress status

- ✅ Working tree: clean
- ✅ Local HEAD = remote HEAD (`6c8d86b`)
- ✅ Semua artifact ter-commit dan ter-push
- ✅ Obfuscator writeup tersimpan di repo

**Untuk resume sesi berikutnya**: baca `PROGRESS.md` (ini) +
`sesi27_consolidated/README.md` + `sesi27_consolidated/docs/OBFUSCATOR_WRITEUP.md`
→ state langsung clear tanpa re-analisis.
