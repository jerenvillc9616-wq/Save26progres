# Sample #3 — Full Deobfuscation Analysis

## Overview

| Field | Value |
|---|---|
| Executor | Delta v1.0.714.1091 |
| Session start | 2026-04-18 11:42:29 |
| Total runtime | 62.14 s |
| Layers captured | 24 `loadstring` calls |
| Protection stack | Luarmor V4 → Luraph v14.4.2 → Luraph v14.7 → MoonSec V3 |
| Script identity | **MaxHub** — Roblox cheat hub (game-specific) |
| Key (observed) | `NujYJRBQSEoWhqTyHFwBzeTvOHgskXVS` (Luarmor key, 32 chars) |

---

## Protection Layer Stack

```
┌──────────────────────────────────────────────────────────────────────────────┐
│  LAYER 1  –  Luarmor Bootstrap (01_luarmor_bootstrap.lua)                    │
│  • Checks local cache (static_content_130525/init-74c74f95fd0-marbeg.lua)    │
│  • Downloads from https://cdn.luarmor.net/v4_init_marbeg.lua if stale        │
│  • loadstring(cached_or_downloaded)()  →  Layer 2                            │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 2  –  Luarmor V4 Loader (02_luarmor_v4_loader.lua)  [~602 KB]         │
│  • Reads _bsdata0 session auth metadata from Layer 1                          │
│  • Decrypts `superflow_bytecode` blob using session key                       │
│  • Executes decrypted chunk  →  Layer 3                                       │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 3  –  Luraph Env Wrapper A (03_luraph_env_wrapper_a.lua)              │
│  • setfenv wrapper; maps identifier "hkizNN" to the VM entrypoint            │
│  • calls hkizNN(...)  →  Layer 4                                             │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 4  –  Luraph VM A (04_luraph_vm_a.lua)  [~239 KB, Luraph v14.4.2]    │
│  • Custom Luraph virtual machine; interprets encrypted bytecode              │
│  • Performs Luarmor key validation:                                          │
│      reads key from getgenv().script_key or file "MaxhubKey"                 │
│      calls key_check_lib:check_key(key) → Luarmor API                        │
│  • On success: fires Layer 5 → Module 6 → Module 8 → …                      │
│  • On failure: Nord notification + halt                                       │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 5  –  Luraph Env Wrapper B (05_luraph_env_wrapper_b.lua)              │
│  • Same as Layer 3 but for identifier "OomXYkQ"                              │
│  • calls OomXYkQ(...)  →  Layer 11                                           │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 6  –  Luarmor Key Check Library (06_key_check_library.lua)            │
│  • Returned by the Luarmor V4 loader and passed into Layer 4                 │
│  • Implements check_key(), invalidate_cache(), load_script()                 │
│  • Uses a custom 128-bit hash (4×uint32 state) for HMAC-like headers         │
│  • API endpoint: https://sdkapi-public.luarmor.net/sync                      │
│               +  <node>/check_key?key=…&script_id=…                          │
│  • Script ID: <32-char hex identifying this particular Luarmor script>       │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 7  –  Nord Notification System (07_nord_notifications.lua)            │
│  • Standalone module; loaded early for error/status popups                   │
│  • 16 built-in themes, animated Roblox GUI notifications                     │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 8  –  Luarmor Bootstrap B (08_luarmor_bootstrap_b.lua)                │
│  • Re-runs the Layer 1 bootstrap after key validation succeeds               │
│  • Fetches the now-unlocked init script  →  Layer 11                         │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 9  –  Encrypted Key Bytes (09_key_bytes.lua)                          │
│  • Returns a 23-byte binary string (session token / nonce material)          │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 10 –  Key Initializer (10_key_init.lua)                               │
│  • Copies script_key from getgenv() into a local variable                   │
├──────────────────────────────────────────────────────────────────────────────┤
│  LAYER 11 –  Luraph VM Main (11_luraph_vm_main.lua)  [~3.2 MB, v14.7]       │
│  • The primary MaxHub logic VM                                               │
│  • Reads two encrypted JSON payloads from local cache                        │
│  • Dynamically loads all UI sub-modules (12–23) via loadstring               │
│  • Loads and executes the game-specific cheat (24) from Luarmor              │
└──────────────────────────────────────────────────────────────────────────────┘
```

---

## Deobfuscated Module Breakdown

### Already Clean (deobfuscated by capture)

| File | Module | Description |
|---|---|---|
| `07_nord_notifications.lua` | Nord | Animated Roblox GUI notification system, 16 colour themes |
| `09_key_bytes.lua` | - | Returns 23-byte session token nonce |
| `10_key_init.lua` | - | Copies `script_key` from `getgenv()` into scope |
| `12_connection_handler.lua` | ConnectionHandler | Full RBXScriptSignal lifecycle manager (connect/disconnect/once/waitfor/cooldown/hook) |
| `13_leny_ui_library.lua` | **Leny-UI** | 3175-line GUI library; `Library:createTab()`, `:createSection()`, `:createToggle()`, etc. Sources: `github.com/Grayy12/Leny-UI` |
| `14_dropdown.lua` | Dropdown | Multi-select dropdown element |
| `15_toggle.lua` | Toggle | On/off toggle element |
| `16_popup.lua` | Popup | Floating popup with auto-position and outside-click dismiss |
| `17_utility.lua` | Utility | Tween, drag, resize, mouse cursor, transparent object helpers |
| `18_slider.lua` | Slider | Numeric slider with step, min/max, text input |
| `19_keybind.lua` | Keybind | Keyboard/mouse keybind with "held" mode |
| `20_textbox.lua` | TextBox | Auto-sizing text box |
| `21_navigation.lua` | Navigation | Tab navigation with page switching and popup management |
| `22_color_picker.lua` | ColorPicker | HSV/Hex/RGB colour picker |
| `23_theme.lua` | Theme | Dark/light theme registry with live colour swapping |

### Reformatted/Cleaned (originally obfuscated layout)

| File | Description |
|---|---|
| `01_luarmor_bootstrap.lua` | Layer 1 bootstrapper – cache/CDN fetch logic, stripped of session auth blob |
| `03_luraph_env_wrapper_a.lua` | Luraph `setfenv` wrapper A – trivial after cleanup |
| `05_luraph_env_wrapper_b.lua` | Luraph `setfenv` wrapper B – trivial after cleanup |
| `06_key_check_library.lua` | **Fully reformatted** from ASCII-art whitespace obfuscation; all functions named and documented |
| `08_luarmor_bootstrap_b.lua` | Layer 8 re-bootstrap – identical logic to Layer 1 |

### VM-Protected (annotated stubs)

| File | Protector | Why not fully deobfuscatable |
|---|---|---|
| `02_luarmor_v4_loader.lua` | Luarmor V4 proprietary | Custom closed-source VM + encrypted `superflow_bytecode` blob |
| `04_luraph_vm_a.lua` | Luraph v14.4.2 | Commercial VM-based obfuscation; bytecode only interpretable by bundled VM |
| `11_luraph_vm_main.lua` | Luraph v14.7 | Same as above, 3.2 MB main payload |
| `24_main_script_moonsec.lua` | MoonSec V3 | Custom VM with encoded instruction stream |

---

## Key Observations

### Script Identity: MaxHub
This is a Roblox cheat hub called **MaxHub** that uses **Leny-UI** as its GUI framework.

- Notification header text: `"MaxHub"` (seen in `07_nord_notifications.lua` line 245)
- `_G.Config` is set to control Nord notification theme
- `shared.Flags.Toggle` / `shared.Flags.Slider` stores state globally

### Luarmor DRM
The script uses **Luarmor V4** as its distribution and key-verification system:
- Script is delivered encrypted from `api.luarmor.net`
- Users must provide a valid key via `getgenv().script_key` or file `"MaxhubKey"`
- Key is validated against the Luarmor API with a custom HMAC using a 128-bit hash
- Validated key observed: `NujYJRBQSEoWhqTyHFwBzeTvOHgskXVS`

### Obfuscation Chain
4 nested layers of VM-based obfuscation were used:
1. **Luarmor V4** — DRM + encrypted delivery
2. **Luraph v14.4.2** — key-check orchestration VM
3. **Luraph v14.7** — main feature VM (the largest layer at 3.2 MB)
4. **MoonSec V3** — innermost game-specific cheat script

### File I/O Activity
```
Reads:  MaxhubKey                                               (32 bytes)
        static_content_130525/init-74c74f95fd0-marbeg.lua      (602 KB)
Writes: static_content_130525/init-74c74f95fd0-marbeg.lua      (602 KB)
Reads:  static_content_130525/emwi1d78fq6igjpe0cs4kt32ueohfap.json  (244 KB)
Reads:  static_content_130525/brosrp0zijhb8ju2w8ynllo6a5nblaz.json  (3.3 MB)
```

### Network Activity
```
GET https://cdn.luarmor.net/v4_init_marbeg.lua         (bootstrap download)
GET https://sdkapi-public.luarmor.net/sync              (get CDN node list)
GET <node>/check_key?key=…&script_id=…                  (key validation)
GET https://raw.githubusercontent.com/Grayy12/EXT/main/connections.lua
GET https://raw.githubusercontent.com/Grayy12/Leny-UI/refs/heads/main/Modules/*.lua
```

---

## Execution Timeline

| Time (s) | Event |
|---|---|
| 0.00 | Session starts in Delta executor |
| 1.09 | Layer 1: Luarmor bootstrapper runs |
| 3.10 | Layer 2: Luarmor V4 loader decrypts and runs |
| 3.44 | Layer 3: Luraph env wrapper A |
| 6.79 | Layer 4: Luraph VM A begins (key check orchestration) |
| 6.98 | Layer 5: Luraph env wrapper B |
| 10.44 | Layer 6: Key check library proxy loaded |
| 10.64 | Layer 7: Nord notifications loaded |
| 12.41 | Layer 8: Luarmor bootstrap B |
| 14.13 | Layer 9: Key bytes returned |
| 14.16 | Layer 10: script_key initialized |
| 30.57 | Layer 11: Luraph VM main begins (16 s of key validation + CDN fetch) |
| 35.40–38.60 | Layers 12–23: UI modules loaded (ConnectionHandler, Leny-UI, UI elements) |
| 42.42 | Layer 24: MoonSec V3 main cheat script executes |
