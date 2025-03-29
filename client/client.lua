local function sendNotification(message)
    if Config.Notification.System == 'okok' then
        exports['okokNotify']:Alert('Blacklist', message, 5000, 'error')
    elseif Config.Notification.System == 'oxlib' then
        lib.notify({ title = 'Blacklist', description = message, type = 'error' })
    else
        TriggerEvent('chat:addMessage', { args = { '[Blacklist]', message } })
    end
end

-- Precompute hash tables for faster lookups
local blacklistedVehicleHashes = {}
for _, vehicle in ipairs(Config.Blacklist.Vehicles) do
    blacklistedVehicleHashes[GetHashKey(vehicle)] = vehicle
end

local blacklistedPedHashes = {}
for _, ped in ipairs(Config.Blacklist.Peds) do
    blacklistedPedHashes[GetHashKey(ped)] = ped
end

local blacklistedWeaponHashes = {}
for _, weapon in ipairs(Config.Blacklist.Weapons) do
    blacklistedWeaponHashes[GetHashKey(weapon)] = weapon
end

-- Flag to control weapon enforcement thread
local weaponsEnforcementActive = false

local function checkBlacklist()
    TriggerServerEvent('blacklist:checkPermissions')
end

RegisterNetEvent('blacklist:enforce', function(data)
    -- Vehicle enforcement
    if Config.Blacklist.Enabled.Vehicles and not data.VehiclesBypassed then
        local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
        if vehicle ~= 0 then
            local model = GetEntityModel(vehicle)
            if blacklistedVehicleHashes[model] then
                sendNotification('Vehicle ' .. blacklistedVehicleHashes[model] .. ' is Blacklisted!')
                DeleteEntity(vehicle)
            end
        end
    end

    -- Ped enforcement
    if Config.Blacklist.Enabled.Peds and not data.PedsBypassed then
        local ped = PlayerPedId()
        local pedModel = GetEntityModel(ped)
        if blacklistedPedHashes[pedModel] then
            sendNotification('This ped model is blacklisted!')
            SetEntityAsMissionEntity(ped, true, true)
            DeleteEntity(ped)
        end
    end

    -- Update flag for weapon enforcement
    if Config.Blacklist.Enabled.Weapons and not data.WeaponsBypassed then
        weaponsEnforcementActive = true
    else
        weaponsEnforcementActive = false
    end
end)

-- Single persistent thread for checking weapons
Citizen.CreateThread(function()
    while true do
        if weaponsEnforcementActive then
            local ped = PlayerPedId()
            if DoesEntityExist(ped) then
                for weaponHash, weaponName in pairs(blacklistedWeaponHashes) do
                    if HasPedGotWeapon(ped, weaponHash, false) then
                        if GetSelectedPedWeapon(ped) == weaponHash then
                            SetCurrentPedWeapon(ped, GetHashKey("weapon_unarmed"), true)
                            Citizen.Wait(50) -- brief delay to ensure weapon switch takes effect
                        end
                        RemoveWeaponFromPed(ped, weaponHash)
                        sendNotification('Weapon ' .. weaponName .. ' is Blacklisted!')
                    end
                end
            end
            Citizen.Wait(100) -- check more frequently when active
        else
            Citizen.Wait(1000) -- lower frequency when enforcement is off
        end
    end
end)

-- Periodically trigger a server check for permissions
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        checkBlacklist()
    end
end)
