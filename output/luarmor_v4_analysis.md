# Luarmor V4 loader chain — sample #3

Sample #3 uses Luarmor V4 as the outermost protection layer. The loader chain
looks like this:

```
chunk 001 (outer stub)  --->  chunk 002 (bootstrapper)  --->  chunks 003+ (user scripts)
```

## chunk 001 (hash ee576e08, 1417 B) — outer stub

Self-contained loader. Relevant fields:

- `_bsdata0 = { session_id, big_Xor_key_str, nonce1, \x-packed_key, nonce2, ... }`
  — populated at build time. The first `"C_0C215..."` string is a ≤100-byte
  session fingerprint; the next `"\178\77..."` is a 29-byte XOR/HMAC key; the
  third hex string is a 128-byte signed payload; the final `"\220\159..."` is a
  24-byte auth tag.
- `f="static_content_130525"`, `b="74c74f95fd0-marbeg"` — the local disk cache
  directory and the script identifier slug.
- Code path:
  1. `readfile(f.."/init-"..b..".lua")` — read cached script.
  2. If the cached file exists and is >2000 B, `loadstring` and execute it.
  3. Else `HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua" .. (_ca920af6193 or ""))`,
     write to cache, clean up stale sibling cache files, then execute.

The downloaded/cached Lua blob is **chunk 002**.

## chunk 002 (hash dbb7b845, ≈603 KB) — Luarmor V4 bootstrapper

Internally Luraph-protected. Structure:

- Top comment identifies it: *"Luarmor V4 bootstrapper for scripts"*.
- `superflow_bytecode = { 6531 byte-escapes }` — the VM's compiled opcode pool
  (≈6.4 KB of decoded bytes).
- Immediately followed by a `return({ ...big_dispatch_table... }):...(...)` call
  that runs the Luraph-style VM over `superflow_bytecode`.
- Exposes the `__newindex` sink `script_id` so the outer `_ca920af6193` style
  globals can feed the runtime.

Because chunk 002 is itself a Luraph VM, its full devirtualization requires
running the dispatcher (see §Sandbox considerations below). Key observable
behaviour: the bootstrapper calls Luarmor's CDN (`cdn.luarmor.net`), supplies
the build-time session material from `_bsdata0`, receives an encrypted script
bundle, decrypts it with a per-session AEAD, then `loadstring`s each contained
script. The user scripts dumped as chunks 003+ are these post-decryption
payloads.

## chunk 008 (hash 0738f280, 1421 B) — second outer stub

Identical structure to chunk 001 (another Luarmor-loaded entry point, presumably
for a secondary script referenced by the main app). Uses the same
`static_content_130525` cache root but a different `_bsdata0` blob and a
different identifier slug.

## Sandbox considerations

- The Luarmor V4 cloud protocol is AEAD-based and keyed on hardware/user
  fingerprint material that we do not have. Without the live
  `game:HttpGet(...)` response and the target session key, the bootstrapper
  (chunk 002) cannot be executed offline to yield its payloads.
- **However**, the marbeg `loadstring` hook already captured every
  post-decryption payload from a live run, which is why we have chunks 003–024.
  In other words, the Luarmor layer is effectively transparent for this
  sample — the inner Luraph / MoonSec scripts have been extracted and are the
  real focus of subsequent deobfuscation.
