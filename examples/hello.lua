-- Example resource for trying Vistazo's Lua highlighting.

local Greeter = {}
Greeter.__index = Greeter

local DEFAULT_MESSAGE = 'Welcome to the server'

-- Creates a greeter that remembers who it has already welcomed.
function Greeter.new(message)
    return setmetatable({
        message = message or DEFAULT_MESSAGE,
        seen = {},
    }, Greeter)
end

function Greeter:welcome(name)
    if self.seen[name] then
        return ('Welcome back, %s!'):format(name)
    end
    self.seen[name] = true
    return ('%s, %s.'):format(self.message, name)
end

--[[
  FiveM-style usage: greet players when they join.
]]
local greeter = Greeter.new()

AddEventHandler('playerJoining', function()
    local name = GetPlayerName(source)
    print(greeter:welcome(name))
end)

return Greeter
