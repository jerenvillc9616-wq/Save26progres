-- Luarmor Key Check Library  (Layer 6 / Module)
-- Source: https://docs.luarmor.net/luarmor-user-manual-and-f.a.q#key-check-library
--
-- Original file used "ASCII art whitespace" obfuscation — tokens were spread
-- across dozens of columns using inline comments as padding.  Reformatted below.
--
-- This module is accessed via a special key in getfenv() whose name is the
-- documentation URL string.  It returns a proxy table whose __index dispatches
-- to one of three internal functions by hashing the property name:
--
--   proxy.script_id = <id>            → sets the Luarmor script_id (G)
--   proxy[check_key_hash]             → returns L  (check_key)
--   proxy[invalidate_cache_hash]      → returns U  (invalidate_cache)
--   proxy[load_script_hash]           → returns V  (load_script)
--
-- Hash values (custom 128-bit hash of property name):
--   "30F75B193B938B4E96514636​5A85CBCC"  → check_key / L
--   "2BCEA36EB24E250BBAB188C73A74DF10"  → invalidate_cache / U
--   "7624F56542822D214B1FE25E8798CC6"   → load_script / V

local hash  -- holds the custom hash function (populated inside do-block below)
local KEY_CHECK_ENV = getfenv()[
    "This is the key check library used by Luarmor," ..
    " documentation can be viewed at https://docs.luarmor.net/" ..
    "luarmor-user-manual-and-f.a.q#key-check-library"
]

do
    -- mod32: keep value within 32-bit unsigned range
    local function mod32(x)
        return x % 4294967296
    end

    -- xor32: software XOR for two integers
    local function xor32(a, b)
        local result, bit = 0, 1
        while a > 0 or b > 0 do
            local da = a % 2
            local db = b % 2
            if da ~= db then result = result + bit end
            a = math.floor(a / 2)
            b = math.floor(b / 2)
            bit = bit * 2
        end
        return result
    end

    -- shl32: left shift within 32 bits
    local function shl32(x, n)
        return mod32(x * 2^n)
    end

    -- shr32: right shift within 32 bits
    local function shr32(x, n)
        return math.floor(x / 2^n) % 4294967296
    end

    -- hash(str): custom 128-bit → 32-hex-char hash used by Luarmor for
    -- property-name dispatch.  Operates on 4 uint32 state words.
    function hash(str)
        local state = {
            [1] = 0x5ad69b68,
            [2] = 0x03b7222a,
            [3] = 0x2d074df6,
            [4] = 0xcb4fff2d,
        }
        local constants = { [1] = 0x01c3, [2] = 0xa408, [3] = 0x964d, [4] = 0x4320 }

        -- Process input in 4-byte chunks
        local len = #str
        local pos = 1
        while pos <= len do
            local word = 0
            for byte_idx = 0, 3 do
                local abs_idx = pos - 1 + byte_idx
                if abs_idx < len then
                    word = word + str:byte(abs_idx + 1) * 2^(8 * byte_idx)
                end
            end
            word = mod32(word)

            for round = 1, 4 do
                local y = xor32(state[round], word)
                local z = state[round % 4 + 1]
                y = xor32(y, z)
                -- rotate-left by 5 bits then add constant
                y = mod32(shl32(y, 5) + shr32(y, 27) + constants[round])
                local shift = (round - 1) * 5 % 32
                local b = shr32(word, shift)
                y = xor32(y, b)
                y = mod32(y)
                local carry = state[(round + 1) % 4 + 1]
                y = mod32(y + carry)
                state[round] = mod32(y)
            end
            pos = pos + 4
        end

        -- Finalisation mixing
        for round = 1, 4 do
            local y   = state[round]
            local mix1 = state[round % 4 + 1]
            local mix2 = state[(round + 2) % 4 + 1]
            y = mod32(y + mix1)
            y = xor32(y, mix2)
            local rot = round * 7 % 32
            y = mod32(shl32(y, rot) + shr32(y, 32 - rot))
            state[round] = y
        end

        local hex_parts = {}
        for i = 1, 4 do
            hex_parts[i] = string.format("%08X", state[i])
        end
        return table.concat(hex_parts)
    end
end

-- script_id (Luarmor 32-char hex identifier for this script)
local script_id

local HttpService = game:GetService("HttpService")
local function json_decode(body)
    return HttpService:JSONDecode(body)
end

-- HTTP request function (executor-agnostic)
local http_req = (syn and syn.request) or request or http_request

-- check_key(key): validates a Luarmor key against the API
local function check_key(key)
    local client_time = os.time()
    key       = tostring(key)
    script_id = tostring(script_id)

    -- Fetch a random CDN node from the sync endpoint
    local sync_resp = http_req({ Method = "GET", Url = "https://sdkapi-public.luarmor.net/sync" })
    local sync_data = json_decode(sync_resp.Body)
    local nodes     = sync_data.nodes
    local node      = nodes[math.random(1, #nodes)]

    -- Adjust local clock to server time
    local time_delta  = sync_data.st - client_time
    client_time = client_time + time_delta

    -- Build check URL and HMAC-like header
    local check_url = node .. "check_key?key=" .. key .. "&script_id=" .. script_id
    local hmac_input = key .. "_cfver1.0_" .. script_id .. "_time_" .. client_time

    local resp = http_req({
        Method  = "GET",
        Url     = check_url,
        Headers = {
            ["clienttime"] = tostring(client_time),
            ["catcat128"]  = hash(hmac_input),
        },
    })
    return json_decode(resp.Body)
end

-- invalidate_cache(): forces re-download on next launch by writing+deleting a marker file
local function invalidate_cache()
    script_id = tostring(script_id)
    if not script_id:match("^[a-f0-9]{32}$") then return end
    pcall(writefile, script_id .. "-cache.lua", "recache is required")
    wait(0.1)
    pcall(delfile, script_id .. "-cache.lua")
end

-- load_script(): fetches and executes the script payload from Luarmor
local function load_script()
    loadstring(
        game:HttpGet("https://api.luarmor.net/files/v3/loaders/" .. tostring(script_id) .. ".lua")
    )()
end

-- Public API: proxy table dispatches by hashed property name
return setmetatable({}, {
    __index = function(_, key)
        local key_hash = hash(key)
        if key_hash == "30F75B193B938B4E965146365A85CBCC" then return check_key       end
        if key_hash == "2BCEA36EB24E250BBAB188C73A74DF10" then return invalidate_cache end
        if key_hash == "7624F56542822D214B1FE25E8798CC6"  then return load_script      end
        return nil
    end,
    __newindex = function(_, key, value)
        if key == "script_id" then script_id = value end
    end,
})
