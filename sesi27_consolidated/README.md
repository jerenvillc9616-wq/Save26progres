# SESI 27 — Consolidated Deobfuscation Progress (sample #3 + #4)

Melanjutkan kerja dari **Sesi 25** (Luau→5.3 normalizer) dan **Sesi 26**
(bytecode lift via `string.dump` bypass).

## 🎯 State Saat Ini — Ringkas

| Sample | Chunks total | Readable | Bytecode-lifted | Catatan |
|--------|-------------:|---------:|----------------:|---------|
| #3 (marbeg 24 chunk) | 24 | 20 | 4/4 ✅ | `sample3_lifted/` — disasm + strings lengkap |
| #4 (dumpace 8 dumpcap + 30 marbeg) | 38 | 24 | 5/5 ✅ | `sample4_lifted/` — new chunk `22483b9e` diproses |

**Total obfuscated VM instructions terlift: ~115,000** (100K dari sample #3 + 14.6K dari sample #4 new chunk).

---

## 📁 Struktur

```
sesi27_consolidated/
├── sample3_lifted/       ← Output pipeline Sesi 26 (16 file, ~11MB)
│   ├── 002_dbb7b845_full.{bin,_disasm.txt,_strings.txt,_summary.json}  Luarmor V4
│   ├── 004_fe7f2e5e_full.{bin,_disasm.txt,_strings.txt,_summary.json}  Luraph v14.4.2
│   ├── 011_abd9feca_full.{bin,_disasm.txt,_strings.txt,_summary.json}  Luraph v14.7 (main)
│   └── 024_65002084_full.{bin,_disasm.txt,_strings.txt,_summary.json}  MoonSec V3
├── sample4_lifted/       ← Output Sesi 27 (6 file, ~2MB)
│   ├── 22483b9e_full.{bin,_disasm.txt,_strings.txt,_summary.json}     NEW Luraph v14.7 chunk
│   ├── 22483b9e_normalized.lua                                         input parseable
│   └── sample4_unique_small_chunks.lua                                 8 chunk kecil (init/kick)
├── tools/                ← pipeline scripts (re-runnable dengan lua5.3)
│   ├── lua53_disasm.py
│   ├── normalize_luau.py
│   ├── dump_all.lua
│   └── opcode_table_004_v2.json
└── docs/
    ├── SAVE_PROGRESS_SESI26.md    ← detail progress sebelumnya
    ├── SESSION26_HONEST_STATUS.md ← status jujur
    └── OBFUSCATOR_WRITEUP.md      ← analisis teknis 4 obfuscator (NEW)
```

---

## 🔑 Per-chunk metrics

### Sample #3

| Chunk | VM | Bytecode | Sub-protos | Instr | Unique strings |
|-------|----|---------:|-----------:|------:|---------------:|
| 002 `dbb7b845` | Luarmor V4     |   657,182 B | 191 | 15,441 |    269 |
| 004 `fe7f2e5e` | Luraph v14.4.2 |   315,643 B | 169 | 14,298 |    228 |
| 011 `abd9feca` | Luraph v14.7   | 3,437,765 B | 446 | 59,068 | **2,786** |
| 024 `65002084` | MoonSec V3     |   146,707 B |  94 | 11,384 |    100 |

### Sample #4 (new chunk)

| Chunk | VM | Bytecode | Sub-protos | Instr | Unique strings |
|-------|----|---------:|-----------:|------:|---------------:|
| `22483b9e` | Luraph v14.7 (varian baru) | 669,066 B | 195 | 14,649 | 259 |

Sample #4 umumnya overlap dengan sample #3 (kebanyakan hash identik).
Yang unik: 8 chunk kecil (init Luarmor variant + kick-on-error) dan 1
payload Luraph v14.7 baru `22483b9e` (600KB plain, 669KB bytecode).

---

## 🛠️ Pipeline (reproducible)

Prasyarat: `lua5.3`, `python3`.

```bash
# Langkah 1 — Normalize Luau → Lua 5.3 syntax
python3 tools/normalize_luau.py <raw.lua> <normalized.lua>

# Langkah 2 — Dump bytecode via string.dump bypass
lua5.3 tools/dump_all.lua <normalized.lua> <chunk.bin>

# Langkah 3 — Disassemble
python3 tools/lua53_disasm.py <chunk.bin> <outdir>/
# → outdir/<chunk>_disasm.txt  +  <chunk>_strings.txt  +  <chunk>_summary.json
```

**Kenapa bypass ini ampuh:** Lua 5.3 `string.dump()` menulis bytecode
**sebelum** fungsi dieksekusi → tidak perlu menjalankan VM obfuscator,
tidak perlu bypass anti-tamper. Cukup parse sebagai Lua 5.3, dump,
disasm.

---

## 🏆 Breakthrough Sesi 26 (tetap berlaku)

1. **4/4 chunk obfuscated sample #3 lifted** (bytecode level, bukan Lua source level)
2. **MoonSec V3 dispatch fields ter-recover** (12 nama: `vjpMQaCP`, `Hx_mYSzf`, `WnEwQZ_Q`, `ZKyD_Bgp`, `dSrDYsTB`, `gjeX_bzq`, `igeSxLoX`, `pWwjyFaE`, `rUurIQyh`, `sFkFtTFe`, `wvQHXIjx`, `yxGuFFVq`)
3. **Chunk 011 strings dict 2,786 unique** — semua feature key readable

## 🆕 Tambahan Sesi 27

1. Pipeline re-verified pada sample #4 — chunk `22483b9e` (Luraph v14.7 varian baru, 600KB)
2. 14,649 instruksi + 259 unique strings sample #4 terlift
3. Konsolidasi semua artifact ke struktur repo yang rapi
4. **`docs/OBFUSCATOR_WRITEUP.md`** — analisis teknis lengkap untuk 4 obfuscator family:
   string indirection `v[1][v[3]]`, MoonSec V3 dispatch table, Luarmor V4 key system,
   Luraph v14.4.2 vs v14.7 comparison, ceiling jujur

---

## 🚫 Ceiling yang tetap ada

**Apa yang BELUM bisa dilakukan otomatis di environment ini:**

1. **Full de-virtualization → Lua source** — butuh mapping custom
   `<bytecode op + dispatch table> → <Lua statement>` per-VM family.
   Ini reverse-engineering manual multi-hari per VM.
2. **Decode opcode stream chunk 024** — alfabet kustom 85-char
   (`0=iSHjz{UGDl7-...`), butuh decoder mengikuti `igeSxLoX`/`wxIuo` logic.
3. **Ekstrak payload 002/011 saat runtime** — VM tidak re-enter `loadstring`,
   jadi hook loadstring tidak menambah data.

## 🎯 Perbandingan dengan folder `deobfuscated/` (sesi sebelumnya)

`../deobfuscated/main_logic_recovered.lua` (345KB) ekstrak Lua source
fragments lewat regex pada string literal file 011. Pendekatan berbeda:

| Metode | Output | Keunggulan | Kekurangan |
|--------|--------|-----------|-----------|
| `sesi27_consolidated/sample3_lifted/` | Bytecode + disasm + string const | Data lengkap, semua opcode | Perlu lifter untuk jadi Lua source |
| `deobfuscated/main_logic_recovered.lua` | Lua source fragments (readable) | Logic flow langsung terbaca | Fragmen, tidak self-contained |

Keduanya saling melengkapi. Untuk memahami logic → pakai `main_logic_recovered.lua`.
Untuk rekonstruksi bytecode-level → pakai `sample3_lifted/`.

## 🚀 Eksekusi di Delta

Untuk menjalankan script asli: **gunakan file `001_*.lua` dari sample**
(`ee576e08` untuk sample #3, `63c8021d` untuk sample #4). Luarmor
akan self-bootstrap dari CDN, cache ke `static_content_130525/`, dan
jalankan seluruh chain secara otomatis.

Tidak perlu artifact di folder ini untuk eksekusi — folder ini
**untuk reverse-engineering & pemahaman**.
