-- Luraph Environment Wrapper A  (Layer 3)
-- chunk_name: "Luraph"
--
-- This is the first Luraph obfuscator environment wrapper.
-- It intercepts the call to the Luraph VM (04_luraph_vm_a.lua) and sets up
-- a sandboxed environment using setfenv + setmetatable so that the VM's
-- internal identifier "hkizNN" resolves to the caller's argument (...),
-- while all other globals fall through to the real fenv.
--
-- Luraph ASCII art logo comment is decorative only.

return setfenv(
    function(...)
        return hkizNN(...)
    end,
    setmetatable(
        { ["hkizNN"] = ... },
        { __index = getfenv((...)) }
    )
)
