fx_version "cerulean"
use_fxv2_oal "yes"
lua54 "yes"
game "gta5"
version "1.0.0"
description "A simple scoreboard system"
name 'krs_scoreboard'
author "karos7804"

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',  
    'shared/*.lua'
}

client_script {
    'client/*.lua'
}
server_script {
    'server/*.lua'
}

ui_page 'html/ui.html'

files {
    'html/*.*',
}
