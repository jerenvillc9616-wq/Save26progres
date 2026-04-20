# Obfuscator Technical Writeup

Analisis teknis 4 obfuscator yang dipakai di sample #3 & #4 (Max Hub).
Ditulis dari perspektif rev-eng: bagaimana obfuscator-nya kerja, apa
yang bisa di-recover, apa yang jadi bottleneck.

---

## 1. Luraph v14.7 (chunk 011 sample #3, chunk 22483b9e sample #4)

### Karakteristik

- **Payload size**: 3.2MB plain / 3.4MB bytecode (sample #3) — 600KB / 670KB (sample #4)
- **Sub-protos**: 446 (sample #3) / 195 (sample #4)
- **Instruksi VM Lua 5.3**: 59,068 / 14,649
- **Unique strings**: 2,786 / 259

### Struktur file (Lua 5.3 parse tree)

```
main proto
├── constants[328]  ← K0..K33 = stdlib names, K34..K327 = handler names
├── instructions (0..509)
│   ├── 0..3    : GETTABUP _ENV → R0 (build dispatch table base)
│   ├── 4..32   : GETTABLE R0[K_n] → R1 ; cache bit32.*/buffer.*/table.*
│   └── 33..509 : CLOSURE Bx=n ; SETTABLE R0[K_m] = R1 (install handlers)
└── sub-protos[446]  ← VM handler functions
```

Main proto **hanya** membangun tabel dispatch — logic sebenarnya ada di
446 sub-proto. Tiap sub-proto adalah handler: dekrip konstanta, dispatch
opcode, atau piece of game logic.

### String indirection pattern `v[1][v[3]]`

Pattern yang muncul 1000+ kali di fragment `main_logic_recovered.lua`:

```lua
-- Alih-alih nulis: Z.Character:FindFirstChild("HumanoidRootPart")
-- Luraph v14.7 compile jadi:
Z.Character:FindFirstChild(C[1][C[3]])
```

**Cara kerja:**
1. Setiap variabel 1-huruf (`C`, `Z`, `t`, dst) adalah **tabel 3-elemen** upvalue:
   - `v[1]` = reference ke constant pool (string table)
   - `v[2]` = tidak dipakai (obfuscation padding)
   - `v[3]` = index ke string di constant pool
2. `v[1][v[3]]` = `pool[index]` = resolved string
3. Tabel di-build saat runtime oleh handler `mi` / `si` / `VX` yang jalan di prelude
4. Decryption lazy: string hanya ter-resolve saat expression di-eksekusi

**Kenapa efektif**: static analysis cuma lihat `C[1][C[3]]` — butuh runtime
untuk tahu string apa yang sebenarnya dipanggil.

**Count pattern per variable** (dari `main_logic_recovered.lua`):
```
t[1][t[3]]  111 instances
p[1][p[3]]   92
j[1][j[3]]   66
z[1][z[3]]   65
J[1][J[3]]   65
... (total ~1500+ akses terenkripsi)
```

### Handler naming

Handler functions di-alias dengan 2-3 char gabungan huruf/underscore:
`Dh`, `mi`, `si`, `VX`, `bi`, `ki`, `hX`, `fX`, `is`, `rh`, `ti`, `Ki`, `IX`,
`zX`, `Ks`, `C`, `ji`, `aX`, `bs`, `rs`, `x`. Nama-nama ini **persistent
across builds** untuk major version 14.7 — beda dengan per-build random.

### Kenapa belum bisa full-lift ke Lua source

1. **446 sub-proto** — tiap handler implement opcode custom. Lifter butuh
   mengidentifikasi setiap handler (pattern-match instruksi Lua 5.3 →
   equivalent Lua statement).
2. **Constant table di-encrypt berbeda per-chunk** (base85 variant, XOR
   dengan key derived dari proto index).
3. **Control-flow flattening**: tiap handler pakai state machine
   (`while true do if state==... end end`) — butuh dekompilasi flow
   kembali ke if/while/for normal.
4. **Anti-tamper**: checksum via `debug.info` di beberapa handler. Kalau
   bytecode diubah, VM halt.

### Yang bisa di-recover (tanpa lifter)

- ✅ **String constants** (2,786 unique di chunk 011)
- ✅ **Lua source fragments** yang disimpan as-is di constant pool
  (345KB di `deobfuscated/main_logic_recovered.lua`)
- ✅ **Handler names & count**
- ✅ **Proto structure** (tree, size, upvalues)
- ✅ **Opcode frequency histogram** (untuk identifikasi dispatch)

---

## 2. Luraph v14.4.2 (chunk 004 sample #3)

### Perbedaan dengan v14.7

| Aspek | v14.4.2 | v14.7 |
|-------|---------|-------|
| Payload size | 239KB | 3.2MB |
| Sub-protos | 169 | 446 |
| String indirection | Beda (pakai `v[2]` bukan `v[3]`) | `v[1][v[3]]` |
| Constant encoding | base85 + XOR lebih pendek | base85 + XOR variant |
| Handler count | ~60 | ~100+ |

v14.4.2 payload kecil = cuma UI stage, bukan main logic. Main logic ada
di v14.7 (lebih baru + lebih besar).

### Takeaway rev-eng

Karena beda minor version = beda layout constant/handler, lifter generic
untuk Luraph v14.x **tidak feasible**. Tiap minor version butuh adaptasi.
Ini alasan lifter Luraph publik (GitHub) sering jadi out-of-date.

---

## 3. Luarmor V4 (chunk 002 sample #3)

### Karakteristik

- **Role**: Wrapper / loader stage-1. Payload `002_dbb7b845` di-install
  oleh Luarmor dari `https://cdn.luarmor.net/v4_init_marbeg.lua`.
- **Size**: 602KB plain / 657KB bytecode
- **Sub-protos**: 191
- **Instruksi**: 15,441

### Key system

```lua
-- Dari script 001_ee576e08.lua (loader):
getgenv().script_key = "xxx-xxx-xxx"
loadstring(game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua"))()
```

Luarmor VM:
1. Cek `script_key` di `getgenv()`
2. Hash + compare dengan whitelist server-side (via HttpGet ke luarmor.net)
3. Kalau valid → decrypt stage-2 payload (Luraph-wrapped) → `loadstring` →
   execute
4. Kalau invalid → kick player / no-op

### VM internals

Luarmor V4 VM = **custom bytecode VM** dengan:
- Opcode table di-encrypt (XOR + permutation per build)
- String table di-encode base85 custom
- Anti-debug: cek `debug.getinfo` pada entry point
- Integrity check: `checksum` via `string.byte` loop

### Kenapa tidak di-lift di sesi ini

Luarmor = stage-1, isi sebenarnya = **stage-2 Luraph payload**. Lift
Luarmor cuma kasih kita stage-2 payload (yang udah kita punya via marbeg
hook — chunks 004, 011, 024). Jadi tidak value-add.

---

## 4. MoonSec V3 (chunk 024 sample #3)

### Karakteristik

- **Size**: 76KB plain / 147KB bytecode
- **Sub-protos**: 94
- **Instruksi**: 11,384
- **Unique strings**: 100 (sangat sedikit — proof string-level encryption)

### Dispatch table structure

MoonSec V3 pakai **builtin-alias prelude** yang membangun tabel `s[]`:

```lua
-- Recovered dispatch fields:
s.rvwScOhk = tonumber
s.GtHyR_mw = string.char
s.dSrDYsTB = string.sub
s.gjeX_bzq = string.byte
s.rZFaKTvv = table.concat
s.ZKyD_Bgp = table.insert
-- + 6 lagi: vjpMQaCP, Hx_mYSzf, WnEwQZ_Q, igeSxLoX, pWwjyFaE, rUurIQyh,
-- sFkFtTFe, wvQHXIjx, yxGuFFVq
```

Ini bikin static analysis susah: call `s.dSrDYsTB(x, 1, 3)` secara visual
= obfuscated garbage, tapi runtime-nya = `string.sub(x, 1, 3)`.

### Custom base-85 alphabet

Bytecode VM di-encode string literal 23,800-char pakai alphabet:

```
0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!#%&'()*+,-./:;<=>?{}
```

85 karakter (ASCII 32–125 minus `" $ @ [ \ ] ` | ~`). Decoder di handler
`igeSxLoX`/`wxIuo` (naming tergantung build).

### State machine (while e<506)

Prelude build `s[]` pakai loop state-machine `while e<506 do ... end`
dengan switch (`if e==X then ... e=Y; end`) — classic control-flow
flattening. Butuh de-flatten manual atau symbolic execution.

### Yang bisa di-recover

- ✅ Dispatch field names (12 di atas)
- ✅ Base-85 alphabet
- ✅ Handler boundaries (via bytecode disasm)
- ❌ Bytecode VM opcode meaning (belum di-enumerate)
- ❌ Decoded bytecode stream → Lua AST

### Unpacker publik

`https://github.com/ferib/MoonSecV3-Unpacker` (sering takedown). Butuh
`lua5.1` + `luajit` + dependency Luau compat. Tidak trivial untuk
environment non-native-Lua.

---

## 5. Ringkasan komparatif

| Obfuscator | Level | Bytecode lift | Source lift | Notes |
|-----------|-------|---------------|-------------|-------|
| Luarmor V4 | Stage-1 wrapper | ✅ (bypass Lua 5.3) | ❌ | Isinya = stage-2, jadi skip |
| Luraph v14.4.2 | Payload VM | ✅ | ❌ (lifter tidak ada) | Minor version matter |
| Luraph v14.7 | Payload VM | ✅ | ⚠️ Fragment-only | 345KB source fragment recoverable via constant pool |
| MoonSec V3 | Payload VM | ✅ | ❌ (custom alphabet) | Dispatch fields recoverable |

---

## 6. Generalized rev-eng workflow

Untuk obfuscator Lua (Luau) family:

1. **Normalize Luau → Lua 5.3 syntax** (`normalize_luau.py`)
2. **Parse & dump bytecode via `string.dump`** (bypass: VM belum jalan)
3. **Disassemble** dengan opcode table standard Lua 5.3
4. **Extract string table** — bocoran string kasih petunjuk fitur/API
5. **Pattern-match handler signature** — identifikasi dispatch, decoder,
   constant loader
6. **Optional**: Symbolic execution handler untuk resolve opcode meaning
7. **Lifter** (manual/semi-auto): bytecode ops → Lua AST → Lua source

Step 1-5 mekanis dan bisa di-automate. Step 6-7 = **multi-day per-VM
work**, ini ceiling yang tidak bisa di-break dalam 1 session.

---

## 7. Ceiling jujur

**Bisa dilakukan di environment chat ini:**
- Analisis statis (done)
- Bytecode lift via Lua 5.3 bypass (done)
- String extraction (done)
- Fragment recovery dari Luraph constant pool (done)

**Tidak bisa:**
- Full source lift Luraph v14.x (lifter publik unstable, manual lift =
  multi-day)
- Decode MoonSec V3 bytecode stream (butuh opcode enumeration +
  decoder verification)
- Runtime extraction (butuh Roblox executor context)

Kombinasi artefak di `sample3_lifted/` + `deobfuscated/main_logic_recovered.lua`
= state-of-the-art yang feasible secara statis. Untuk lanjut dari sini
butuh:
- Akses ke Roblox executor (dynamic instrumentation)
- Waktu manual lift (lifter Luraph v14.7 custom)
- Expertise VM reverse-engineering (identifikasi opcode handler
  semantically)
