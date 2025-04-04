Config = {}

-- Notification System
Config.Notification = {
    System = 'okok', -- Options: 'okok', 'oxlib', 'chat'
}

-- Blacklist Settings
Config.Blacklist = {
    -- Enable/Disable Specific Systems
    Enabled = {
        Vehicles = true,
        Peds = true,
        Weapons = true,
    },

    -- Blacklisted Vehicles
    Vehicles = {
        'issi4',
        'issi5',
        'issi6',
        'limo2',
        "dominator4",
        'dominator5',
        'dominator6',
        'dukes2',
        'impaler2',
        'impaler3',
        'impaler4',
        'imperator',
        'imperator2',
        'imperator3',
        'ruiner2',
        'ruiner3',
        'slamvan4',
        'slamvan5',
        'slamvan6',
        'tampa3',
        'deluxo',
        'stromberg',
        'toreador',
        'paragon2',
        'zr380', 
        'zr3802',
        'zr3803',
        'scramjet',
        'vigilante',
        'voltic2',
        'deathbike2',
        'deathbike3',
        'oppressor',
        'oppressor2',
        'blazer5',
        'bruiser',
        'bruiser2',
        'bruiser3',
        'brutus',
        'brutus2',
        'brutus3',
        'caracara',
        'buffalostx',
        'dune3',
        'dune4',
        'dune5',
        'insurgent',
        'insurgent2',
        'insurgent3',
        'marshall',
        'menacer',
        'monster',
        'monster3',
        'monster4',
        'monster5',
        'nightshark',
        'rcbadito',
        'technical',
        'technical2',
        'technical3',
        'zhaba',
        'dump',
        'cutter',
        'handler',
        'boxville5',
        'speedo4',
        'speedo5',
        'dinghy5',
        'kosatka',
        'patrolboat',
        'akula',
        'annihilator',
        'annihilator2',
        'buzzard',
        'conada2',
        'havok',
        'hunter',
        'savage',
        'seasparrow',
        'seasparrow2',
        'seasparrow3',
        'skylift',
        'valkyrie',
        'valkyrie2',
        'alkonost',
        'alphaz1',
        'avenger',
        'avenger2',
        'avenger3',
        'avenger4',
        'bombushka',
        'howard',
        'hydra',
        'lazer',
        'microlight',
        'mogul',
        'molotok',
        'nokota',
        'pyro',
        'raiju',
        'rogue',
        'starling',
        'streamer216',
        'strikeforce',
        'titan',
        'tula',
        'volatol',
        'brickade',
        'brickade2',
        'pbus',
        'cerberus',
        'cerberus2',
        'cerberus3',
        'hauler2',
        'mule2',
        'mule3',
        'mule4',
        'mule5',
        'phantom2',
        'phantom3',
        'pounder2',
        'terbyte',
        'warrener'
    },

    -- Blacklisted Peds
    Peds = {
        'a_m_y_stbla_02',
        's_m_y_cop_01',
    },

    -- Blacklisted Weapons
    Weapons = {
        "WEAPON_EMPLAUNCHER",
        "WEAPON_RAYMINIGUN",
        "WEAPON_COMPACTLAUNCHER",
        "WEAPON_HOMINGLAUNCHER",
        "WEAPON_RAILGUN",
        "WEAPON_GRENADELAUNCHER_SMOKE",
        "WEAPON_GRENADELAUNCHER",
        "WEAPON_RPG",
        "WEAPON_STINGER",
        "WEAPON_MINIGUN",
        "WEAPON_GRENADE",
        "WEAPON_MOLOTOV",
        "WEAPON_STICKYBOMB",
        "WEAPON_PROXMINE",
        "WEAPON_PIPEBOMB",
        "WEAPON_SMOKEGRENADE",
        "WEAPON_RAYCARBINE",
        "WEAPON_RAYPISTOL"
    },
}

-- Bypass Permissions
Config.Bypass = {
    All = { 'group.admin' }, -- Bypass all systems
    Vehicles = { 'group.moderator' }, -- Bypass vehicle blacklist
    Peds = { 'group.helper' }, -- Bypass ped blacklist
    Weapons = { 'group.helper' }, -- Bypass weapon blacklist
}