# Analisis Statis Payload Luraph/Luarmor

## Ringkasan target

Script ini = **Max Hub** (lihat label "Max Hub", "Maxhub Watermark"). Hub
cheat Roblox multi-game terdistribusi via Luarmor (key system), dengan
payload inti diproteksi Luraph v14.x.

## Kategori fitur yang teridentifikasi

### 🎯 Aimbot / Combat
- Aimbot, Silent Aim (implied), Ragebot, Ragebot Firerate
- FOV (Size/Color/Thickness/Transparency/Outline/Lock Center/Auto Adjust)
- Lock On (Distance, Smoothing, Target)
- Hit Chance, Impossible Hit, Instant Aim, Instant Bullet(s)
- Prediction, Snap From, Trigger (implied)
- Wallbang, No Spread, Team Check, Friendcheck
- Kill Aura / Gun Kill Aura, Melee / Extended Melee Reach
- Anti Aim, Anti Desync, Desync, Spoof State

### 👁️ ESP / Visuals
- ESP Enabled/Effects, Names Enabled, Healthbar Enabled
- Boxes (Animated/Corner/Filled/Gradient)
- Chams (Enabled/Fill/Outline), Tracers (Mode/Enabled)
- Skeleton/Dots, Footstep ESP, Weapon Chams
- Distance Check, Max ESP Distance, Occluded check
- Thermal Fill, Magazine Visuals (Bar Width, Full/Mid/Outline Color)
- Rainbow Sky, Fullbright, No Fog, Remove Shadows, Ambient Brightness
- Time of Day, Atmosphere (Color/Decay/Density/Glare)

### 🏃 Movement
- WalkSpeed, JumpPower, Fly (Speed/Smoothing), Bunny Hop
- Inf Jump, NoClip, Teleport (implied), Freeze
- Strafe On Jump, Strafe Smoothing, Better Movement
- No Landing Slow, No Block Slowdown, No Item Use Slowdown
- No Reload Slowdown, No Jump Cooldown/Delay, No Stun
- Infinite Stamina, No Footsteps, No Camera Bobbing

### 💰 Exploit / Farm
- Auto Farm, Farm Scourge, Farm Speed, Farm Angle
- Auto Claim (Enemies/Forge/Ores), Auto Sell Ores
- Auto Use Potions, Auto Skip Shop, Auto Forge
- Inf Bounty/Stash/Valuables, Infinite Ammo, Unlimited Lockpicks
- Unlock All, Unlock Firemodes
- Instant Reload, Instant Respawn, Instant Lockpick, Instant Loot Cash
- Instant Interactions, Instant Lean, Instant Stop
- Spam Purchase, Purchase Cooldown

### 🛡️ Utility / Anti-detection
- Anti AFK, Mod Detector, Mob/Player Detection Radius
- Kick If Player Nearby, Stop Farm If Player Near
- Reset If Player Nearby, Move Away If Low/Parried
- Health To Move At, No Downed, No Drown, SelfDamage

### 📷 Misc / QoL
- Third Person, First Person Controller, Free Cam, Spectate (Player)
- Dynamic FOV, Modify FOV, No Bobbing
- Recoil Dampener, Modify ReloadTime, Fire Rate

## Game target (kemungkinan)

Kombinasi fitur (Loot, Crate, Forge, Ores, Lockpick, Bladedancer/Operator
/Commander Kit, "Jujutsu Sorcerer", "Scythe", "Curse") menunjukkan hub
multi-game yang mencakup:

- Jujutsu Shenanigans / Jujutsu-themed game (Scythe, Curse, Sorcerer)
- Shooter FPS (Bladedancer/Operator/Commander kits, Magazine, Firemodes)
- Survival/loot (Crate, Forge, Ores, Lockpick, Bounty, Stash)
- Doors-like (Parkour, Lockpick, Lab Crate)

## Asset yang direferensikan

```
rbxassetid://99852798675591  (dari ui_library_main.lua — GUI utama)
rbxassetid://130336833420143
rbxassetid://95250225969869
```

## Distribusi & key system

- Init: `https://cdn.luarmor.net/v4_init_marbeg.lua`
- Cached di `static_content_130525/init-74c74f95fd0-marbeg.lua`
- `script_key` diambil dari `getgenv().script_key`
- Luarmor V4 VM men-decrypt stages secara berjenjang

## Kenapa payload inti (Luraph v14.x) belum bisa di-Lua-kan penuh

1. **Luraph v14.7** dan **v14.4.2** pakai:
   - Custom VM dengan ratusan opcode
   - Control-flow flattening berat (state-machine di handler)
   - String encryption per-chunk (beberapa string bocor karena late-decrypt)
   - Constant encryption (angka jadi ekspresi besar)
2. Lifter publik untuk Luraph v14 **tidak ada** yang stabil — versi
   14.x mengubah VM layout tiap minor release.
3. Pendekatan yang realistis:
   - **Dynamic analysis**: patch `loadstring`/`Instance.new` di Roblox
     executor, dump setiap call-site (yang sudah dilakukan → ini
     sumber 24 chunk).
   - Stages UI di-dump sebagai Lua bersih (lihat `deobfuscated/`).
   - Bisnis-logic inti (aimbot math, ESP loop) tetap di VM.

## File strings lengkap

- `Luarmor_V4_strings.txt` — 7,814 string (kebanyakan VM-internal)
- `Luraph_v14.4.2_strings.txt` — 1,748 string
- `Luraph_v14.7_strings.txt` — 31,523 string (payload utama, bocoran
  paling banyak)

## Yang sudah berhasil direcovery (di `../deobfuscated/`)

- UI library lengkap (3,175 baris) — dump #13
- Komponen UI modular (8 file) — dump #14-22
- Theme, notifikasi, service loader — dump #7, #12, #23
- Loader Leny-UI dari GitHub `Grayy12/Leny-UI`
