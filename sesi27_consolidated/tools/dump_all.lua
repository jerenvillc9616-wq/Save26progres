-- One-liner Lua 5.3 string.dump capture used in sesi 26
-- Usage: lua5.3 dump_all.lua <input_normalized.lua> <output.bin>
local TARGET = arg[1]; local OUT = arg[2]
local f = assert(io.open(TARGET, "rb"))
local src = f:read("*a"); f:close()
local fn, err = load(src, "@" .. TARGET)
if not fn then io.stderr:write("CE: "..err.."\n"); os.exit(1) end
local b = string.dump(fn, false)
local of = io.open(OUT, "wb"); of:write(b); of:close()
io.stderr:write(string.format("dumped %d bytes -> %s\n", #b, OUT))
