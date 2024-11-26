local function notify(message)
    SendNUIMessage({
        type = "notification",
        message = message
    })
end

local function isBlacklisted(entity, list)
    for _, item in ipairs(list) do
        if entity == item then
            return true
        end
    end
    return false
end

local function hasBypassPermission()
    local allowed = false
    TriggerServerEvent("blacklist:checkBypass")
    RegisterNetEvent("blacklist:bypassStatus", function(status)
        allowed = status
    end)
    Wait(200) -- Small delay to ensure the server responds
    return allowed
end

Citizen.CreateThread(function()
    while true do
        local playerPed = PlayerPedId()

        -- Skip checks if the player has bypass permission
        if not hasBypassPermission() then
            local playerVeh = GetVehiclePedIsIn(playerPed, false)

            -- Check for blacklisted vehicle
            if playerVeh ~= 0 then
                local vehModel = GetEntityModel(playerVeh)
                if isBlacklisted(GetDisplayNameFromVehicleModel(vehModel), Config.BlacklistedVehicles) then
                    notify("🚗 Blacklisted Vehicle Detected!")
                    DeleteVehicle(playerVeh)
                end
            end

            -- Check for blacklisted ped
            local pedModel = GetEntityModel(playerPed)
            if isBlacklisted(pedModel, Config.BlacklistedPeds) then
                notify("🚶 Blacklisted Ped Model Detected!")
                SetEntityAsMissionEntity(playerPed, true, true)
                DeleteEntity(playerPed)
            end

            -- Check for blacklisted weapon
            for _, weapon in ipairs(Config.BlacklistedWeapons) do
                if HasPedGotWeapon(playerPed, GetHashKey(weapon), false) then
                    notify("🔫 Blacklisted Weapon Detected!")
                    RemoveWeaponFromPed(playerPed, GetHashKey(weapon))
                end
            end
        end

        Wait(1000) -- Check every second
    end
end)
