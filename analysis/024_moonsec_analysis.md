# MoonSec V3 — dump #24 (76KB)

## Struktur

File memakai MoonSec V3 (VM-based):

1. **Prelude** — state-machine `while e<506` yang membangun `s[]` table
   berisi alias ke builtin:
   - `s.rvwScOhk` → `tonumber`
   - `s.GtHyR_mw` → `string.char`
   - `s.dSrDYsTB` → `string.sub`
   - `s.gjeX_bzq` → `string.byte`
   - `s.rZFaKTvv` → `table.concat`
   - `s.ZKyD_Bgp` → `table.insert`

2. **VM bytecode** — 1 literal string sepanjang **23,800 karakter** memakai
   alfabet custom 85-char (ASCII 32–125, tanpa `"$@[\\]\`|~`). Ini stream
   instruksi VM MoonSec yang di-decode oleh prelude.

3. **VM interpreter** — handler per-opcode di-inline di bawah deklarasi
   bytecode (`f(8, nil, f, z, e)` dll.).

## Kenapa belum bisa di-deobf penuh

- MoonSec V3 = **instruction virtualization**. Opcode & encoding bisa
  bervariasi tiap build, handler-handler juga di-control-flow-flatten.
- Deobf butuh menjalankan decoder (perlu runtime Lua 5.1/LuaJIT) lalu
  lifter bytecode → Lua AST. Di environment ini Lua tidak tersedia.
- Unpacker publik (mis. `MoonSec-V3-Deobfuscator` di GitHub) ada, tapi
  perlu instalasi Lua + coba-coba versi.

## String yang bisa ditarik

Tidak ada konstanta Roblox (`game`, `Player`, `HttpGet`, dst.) yang terlihat
plain — semua di-encode dalam stream bytecode. Ini wajar untuk MoonSec V3
(string-level encryption aktif).

## Langkah lanjut (kalau mau dilanjut)

1. Install `lua5.1` + `luajit` di environment.
2. Clone unpacker komunitas, mis. `https://github.com/ferib/MoonSecV3-Unpacker`
   (atau sejenis — sering kena takedown).
3. Run unpacker → dapat bytecode plain → lifter → Lua readable.
4. Hasilnya biasanya masih ~70–80% readable (nama variabel tetap acak).
