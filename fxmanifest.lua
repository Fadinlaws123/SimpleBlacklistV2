fx_version 'cerulean'
game 'gta5'

author 'Fadin_laws (SimpleDevelopments)'
description 'Simple Vehicle, Ped, and Weapon Blacklist'
version '1.0.0'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/client.lua'
}

server_scripts {
    'server/server.lua',
    'server/versionChecker.lua'
}

ui_page 'client/html/index.html'

files {
    'client/html/index.html',
    'client/html/style.css',
    'client/html/script.js'
}

