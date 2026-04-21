# Deobfuscated Modules — sample_#3 (Max Hub)

Hasil deobfuscation dari `sample_#3.zip` (24 dump dari `marbeg` loadstring hook).

## 📁 Isi folder

### Clear Lua modules (13 file, sudah 100% readable)

Ditangkap *setelah* obfuscator VM men-decrypt stage-nya. Langsung bisa dibaca/dimodifikasi:

| File | Asal dump | Deskripsi |
|------|-----------|-----------|
| `nord_notifications.lua` | #7 | Sistem toast notifikasi (`NordNotifications`) |
| `connection_hook_manager.lua` | #12 | ConnectionObj / Hook / Cooldown wrapper |
| `ui_library_main.lua` | #13 | **Library UI utama** (3,175 baris) |
| `component_dropdown.lua` | #14 | Komponen Dropdown |
| `component_toggle.lua` | #15 | Komponen Toggle |
| `leny_ui_popup.lua` | #16 | Popup Leny-UI |
| `leny_ui_utility.lua` | #17 | Utility Leny-UI |
| `component_slider.lua` | #18 | Komponen Slider |
| `component_keybind.lua` | #19 | Komponen Keybind |
| `component_textbox.lua` | #20 | Komponen TextBox |
| `leny_ui_navigation.lua` | #21 | Navigation Leny-UI |
| `component_colorpicker.lua` | #22 | Komponen ColorPicker |
| `theme_colors.lua` | #23 | Palette tema (light/dark) |

### 🎯 `main_logic_recovered.lua` — game logic inti (baru!)

**345KB, 1,200 fragment** Lua source di-ekstrak dari file #11 (Luraph v14.7, 3.2MB).

Ini adalah fragment source code yang disimpan sebagai **string konstanta** di VM Luraph.
VM meng-concatenate & `loadstring`-kan mereka saat runtime.

**Isi yang sudah teridentifikasi jelas:**
- 🔴 **Silent Aim** — hook `findpartonraywithwhitelist` + ray redirect
- 🔴 **Kill Aura / Gun Kill Aura** — `q.Shoot:FireServer` + `q.Hit:FireServer` loop
- 🟡 **ESP / Chams** — `FadeOutOnDist`, `FillTransparency`, box drawing pakai UDim2
- 🟡 **FOV visual** — circle + outline + thermal toggle
- 🟢 **Auto Farm Scourge** — boss farm loop (MaxHub-specific)
- 🟢 **Auto Skip Shop / Auto Sell / NPC interaction** — dialog automation
- 🛡️ **Anti-detection**: Kick If Player Nearby, Move Away If Low, Team Check, Friendcheck
- 🏃 **Movement**: WalkSpeed/JumpPower modifiers, Fly, Bunny Hop

**Kualitas:**
- Logic flow 100% readable ✅
- Roblox API calls utuh ✅
- Nama variabel lokal 1-huruf (`i`, `Z`, `t`, `j`) — sisa obfuscation ❌
- String literal diakses via pattern `v[1][v[3]]` (tabel-indirection) — perlu runtime context untuk resolve ❌

## 🔒 Yang *tidak* ada di folder ini (alasan teknis)

| File | Obfuscator | Kenapa tidak di-extract ke deobfuscated |
|------|-----------|----------------------------------------|
| `002_dbb7b845.lua` | Luarmor V4 VM (602KB) | Isi = VM handler code obfuscator sendiri, bukan game logic |
| `004_fe7f2e5e.lua` | Luraph v14.4.2 (239KB) | Payload di-encode base85 di dalam bytecode — butuh lifter |
| `024_65002084.lua` | MoonSec V3 (76KB) | Payload di custom-base85 bytecode — butuh Lua runtime |

Analisis statis ketiga file ada di `../analysis/`.

## 🚀 Untuk jalankan di Delta

Cara paling cepat: **jalankan `001_ee576e08.lua` apa adanya di Delta**. Ia
akan:
1. Cek cache `static_content_130525/init-74c74f95fd0-marbeg.lua`
2. Kalau tidak ada, download dari `https://cdn.luarmor.net/v4_init_marbeg.lua`
3. Setup `script_key` dari `getgenv().script_key`
4. Auto-bootstrap sisanya

`main_logic_recovered.lua` di folder ini **bukan** stand-alone executable —
ini referensi untuk membaca/memahami logic.
