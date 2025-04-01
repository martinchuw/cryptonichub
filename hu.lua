local HWID_KEY_DB = {
    ["E7CA4C4C-A9DB-421D-B4D8-408F99C8E681"] = "icehook_key_6bCuUOmM5eiNXxcoFOSaB1T1", 
}

return function()
    local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
    local KeyInput = getgenv().Key or ""

    if not HWID_KEY_DB[HWID] then
        game.Players.LocalPlayer:Kick("🔒 HWID no autorizado")
        while true do end
        return false
    end

    if KeyInput ~= HWID_KEY_DB[HWID] then
        game.Players.LocalPlayer:Kick("🔑 Key incorrecta")
        while true do end 
        return false
    end

    print("✅ Whitelist verificada | HWID: " .. HWID)
    return true
end
