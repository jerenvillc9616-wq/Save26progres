-- Luarmor V4 Bootstrap Loader (re-execution / Layer 8)
-- Executor: Delta  |  Session epoch: 1776487361
--
-- Functionally identical to 01_luarmor_bootstrap.lua.
-- This second instance is triggered after the key-check phase completes,
-- causing the Luarmor runtime to re-load its cache or re-download the
-- init script with the authenticated session.
--
-- The _bsdata0 table contains updated session authentication metadata
-- (different nonce/checksum from the first invocation, newer timestamp 1776487361).

local folder   = "static_content_130525"
local filename = "74c74f95fd0-marbeg"

local cached_script
pcall(function()
    cached_script = readfile(folder .. "/init-" .. filename .. ".lua")
end)

if cached_script and #cached_script > 2000 then
    cached_script = loadstring(cached_script)
else
    cached_script = nil
end

if cached_script then
    return cached_script()
else
    pcall(makefolder, folder)
    local remote = game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua" .. (_ca920af6193 or ""))
    writefile(folder .. "/init-" .. filename .. ".lua", remote)

    pcall(function()
        for _, v in pairs(listfiles("./" .. folder)) do
            local match = v:match("(init[%w%-]*).lua$")
            if match and match ~= ("init-" .. filename) then
                pcall(delfile, folder .. "/" .. match .. ".lua")
            end
        end
    end)

    return loadstring(remote)()
end
