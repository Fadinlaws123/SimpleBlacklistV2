Config = {}

-- Blacklisted Vehicles
Config.BlacklistedVehicles = {
    "RHINO",
    "HYDRA",
    "POLICE"
}

-- Blacklisted Peds
Config.BlacklistedPeds = {
    "A_C_Cat_01",
    "A_C_ChickenHawk"
}

-- Blacklisted Weapons
Config.BlacklistedWeapons = {
    "WEAPON_MINIGUN",
    "WEAPON_RAILGUN"
}

-- Notification Configuration
Config.NotificationDuration = 5000 -- in ms
Config.NotificationStyle = {
    backgroundColor = "#222",
    textColor = "#FFF",
    borderColor = "#F00",
    boxShadowColor = "rgba(0, 0, 0, 0.5)"
}

-- Ace Permission to Bypass the Blacklist
Config.BypassPermission = "blacklist.bypass"


-- Discord Webhook for update notifications

Config.VersionChecking = {

    DiscordWebhook = "https://discord.com/api/webhooks/YOUR_WEBHOOK_URL",

    -- Branding for console messages (customizable large branding message)
    Branding = {
        name = "SimpleBlacklist V2 Version Checker",
        version = "1.0.0",
        author = "SimpleDevelopments",
        color = "^2",  -- Color for the console messages
    }
}