function summoner:ui/main
function summoner:raycast/raycast_main
function summoner:altar
function summoner:custom_crafts/magic_cauldron/cauldron
function summoner:custom_crafts/stonecutter/stonecutter_main
function summoner:custom_crafts/mana_focuser/mana_focuser_main
function summoner:custom_crafts/glaugor/glaugor_main
function summoner:manifaction_cell/manifaction_cell_main
execute as @e[tag=rift] at @s if entity @a[distance=..300] run function summoner:rift.test/rift
function summoner:custom_blocks/custom_blocks_main
function summoner:stable_bottle/stable_bottle_main
function summoner:rift.test/rift_functional
function summoner:music_discs/detect_play_tick
function summoner:music_discs/detect_stop_tick

