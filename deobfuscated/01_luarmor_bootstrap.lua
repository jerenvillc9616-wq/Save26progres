-- Luarmor V4 Bootstrap Loader (Layer 1)
-- Executor: Delta  |  Session epoch: 1776487349
-- This is the outermost script that initializes the Luarmor DRM bootstrap chain.
--
-- _bsdata0 contains session authentication metadata:
--   [1]  1602618650           - session token / nonce
--   [2]  "C_0C215_5230-..."   - encoded session string
--   [3]  35035640             - timestamp component
--   [4]  <bytes>              - session key bytes
--   [5]  38016350             - build id
--   [6]  3868337838           - checksum
--   [7]  1776487349           - epoch timestamp
--   [8]  2851531              - internal flag
--   [9]  2645682              - internal flag
--   [10] 45607400             - size/version tag
--   [11] "697374423b..."      - hex-encoded authentication token
--   [12] <bytes>              - secondary key bytes
--
-- These values are used by the Luarmor V4 bootstrapper (02_luarmor_v4_loader.lua)
-- to authenticate the session and decrypt the script.

local folder   = "static_content_130525"
local filename = "74c74f95fd0-marbeg"

local cached_script
pcall(function()
    cached_script = readfile(folder .. "/init-" .. filename .. ".lua")
end)

if cached_script and #cached_script > 2000 then
    -- Use locally cached version
    cached_script = loadstring(cached_script)
else
    cached_script = nil
end

if cached_script then
    return cached_script()
else
    -- Download fresh copy from Luarmor CDN
    pcall(makefolder, folder)
    local remote = game:HttpGet("https://cdn.luarmor.net/v4_init_marbeg.lua" .. (_ca920af6193 or ""))
    writefile(folder .. "/init-" .. filename .. ".lua", remote)

    -- Clean up any stale cached versions
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
