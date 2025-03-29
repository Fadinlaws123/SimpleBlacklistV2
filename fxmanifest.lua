fx_version 'cerulean'
game 'gta5'

author 'Fadin_laws (SimpleDevelopments)'
description 'Simple Vehicle, Ped, and Weapon Blacklist'
version '1.0.1'

shared_script 'config.lua'

client_script 'client/client.lua'
server_script 'server/server.lua'
server_script 'server/versionChecker.lua'

exports {
    'isWeaponBlacklisted',
    'isVehicleBlacklisted'
}
