MoveUI = MoveUI or {}
MoveUI.Dir = "moveui"
MobveUI.Tests = {}

function TMoveUI:IncludeClient(path)
    local str = self.Dir .. "/" .. path .. "lua"

    print("Including MoveUI file", str)

    if (CLIENT) then
        include(str)
    end

    if (SERVER) then
        AddCSLuaFile(str)
    end
end

-- IMPORTANT
MoveUI:IncludeClient("settings/theme")
-- Third party
MoveUI:IncludeClient("thirdparty/bshadows")
-- Misc
MoveUI:IncludeClient("misc/font")
-- Element
MoveUI:IncludeClient("elements/frame")
-- Tests
moveui:IncludeClient("test/frame")
