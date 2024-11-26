-- Ace Permission Bypass Check
RegisterServerEvent("blacklist:checkBypass")
AddEventHandler("blacklist:checkBypass", function()
    local src = source
    local hasPermission = IsPlayerAceAllowed(src, Config.BypassPermission)
    TriggerClientEvent("blacklist:bypassStatus", src, hasPermission)
end)
