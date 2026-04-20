# Deobfuscated Modules — sample_#3

Hasil ekstraksi 13 modul Lua bersih dari 24 chunk yang di-`loadstring` di
`sample3_extracted/marbeg_dumps/`. File-file ini sudah berupa Lua readable
karena ditangkap *setelah* obfuscator VM men-decode stage-nya sendiri.

## Modul

| File | Asal | Deskripsi |
|------|------|-----------|
| `nord_notifications.lua` | dump #7 | NordNotifications — sistem toast/notifikasi (ScreenGui `NordNotifications` di CoreGui) |
| `connection_hook_manager.lua` | dump #12 | ConnectionObj / Hook / Cooldown wrapper (`g._connections`, `g._hooks`) |
| `ui_library_main.lua` | dump #13 | **Library UI utama** (3175 baris, `rbxassetid://99852798675591`) |
| `component_dropdown.lua` | dump #14 | Komponen Dropdown |
| `component_toggle.lua` | dump #15 | Komponen Toggle |
| `component_slider.lua` | dump #18 | Komponen Slider |
| `component_keybind.lua` | dump #19 | Komponen Keybind |
| `component_textbox.lua` | dump #20 | Komponen TextBox |
| `component_colorpicker.lua` | dump #22 | Komponen ColorPicker |
| `theme_colors.lua` | dump #23 | Palette tema (light/dark) |
| `leny_ui_utility.lua` | dump #17 | Utility Leny-UI (di-`HttpGet` dari GitHub) |
| `leny_ui_popup.lua` | dump #16 | Popup Leny-UI |
| `leny_ui_navigation.lua` | dump #21 | Navigation Leny-UI |

## Modul Leny-UI (fetched remote)

Tiga file terakhir berasal dari:

```
https://raw.githubusercontent.com/Grayy12/Leny-UI/refs/heads/main/Modules/…
https://raw.githubusercontent.com/Grayy12/EXT/main/connections.lua
```

Artinya script menggabungkan library UI komponen-an sendiri (dump #13)
dengan loader tambahan dari repo Grayy12.

## Yang *belum* di-deobf

Payload inti masih di dalam VM bytecode:

| File | Obfuscator | Status |
|------|-----------|--------|
| `002_dbb7b845.lua` | Luarmor V4 VM (602KB) | 🔒 VM-virtualized, butuh lifter |
| `004_fe7f2e5e.lua` | Luraph v14.4.2 (239KB) | 🔒 VM-virtualized |
| `011_abd9feca.lua` | Luraph v14.7 (3.2MB) | 🔒 VM-virtualized — payload utama cheat |
| `024_65002084.lua` | MoonSec V3 (76KB) | 🔒 VM-virtualized |

Luraph v14+ dan Luarmor V4 memakai **instruction virtualization** (bytecode
kustom + VM handler di-obfuscate) — deobfuscate penuh tanpa lifter khusus
tidak realistis. Analisis statis (string, fitur) tersedia di
`../analysis/` kalau sudah dibuat.
