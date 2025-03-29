local function hasPermission(src, permissionType)
    local permissions = Config.Bypass[permissionType] or {}
    for _, perm in ipairs(permissions) do
        if IsPlayerAceAllowed(src, perm) then
            return true
        end
    end
    return false
end

RegisterNetEvent('blacklist:checkPermissions', function()
    local src = source
    local bypassData = {
        AllBypassed = hasPermission(src, 'All'),
        VehiclesBypassed = hasPermission(src, 'Vehicles'),
        PedsBypassed = hasPermission(src, 'Peds'),
        WeaponsBypassed = hasPermission(src, 'Weapons')
    }
    TriggerClientEvent('blacklist:enforce', src, bypassData)
end)

RegisterCommand('blacklist', function(src, args, rawCommand)
    local message = [[
        ^1Blacklist Script
        ^0Systems: 
        Vehicle: ^2%s^0, 
        Ped: ^2%s^0, 
        Weapon: ^2%s^0
    ]]
    local vehicleStatus = Config.Blacklist.Enabled.Vehicles and 'Enabled' or 'Disabled'
    local pedStatus = Config.Blacklist.Enabled.Peds and 'Enabled' or 'Disabled'
    local weaponStatus = Config.Blacklist.Enabled.Weapons and 'Enabled' or 'Disabled'
    
    TriggerClientEvent('chat:addMessage', src, { args = { '[Blacklist]', message:format(vehicleStatus, pedStatus, weaponStatus) } })
end, true)
