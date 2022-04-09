# My attemt
#tp @s ~ ~1 ~
#execute if entity @e[tag=check_wire,distance=..1] run tag @s add check_wire.up
#tp @s ~ ~-1 ~
#
#tp @s ~1 ~ ~
#execute if entity @e[tag=check_wire,distance=..1] run tag @s add check_wire.right
#tp @s ~-1 ~ ~
#
#tp @s ~-1 ~ ~
#execute if entity @e[tag=check_wire,distance=..1] run tag @s add check_wire.left
#tp @s ~1 ~ ~
#
#tp @s ~ ~-1 ~
#execute if entity @e[tag=check_wire,distance=..1] run tag @s add check_wire.down
#tp @s ~ ~1 ~
#
#tag @s[tag=check_wire.up] add wire.up
#tag @s[tag=check_wire.right] add wire.right
#tag @s[tag=check_wire.left] add wire.left
#tag @s[tag=check_wire.down] add wire.down
#tag @s[tag=check_wire.up] remove check_wire.up
#tag @s[tag=check_wire.right] remove check_wire.right
#tag @s[tag=check_wire.left] remove check_wire.left
#tag @s[tag=check_wire.down] remove check_wire.down
#
#tag @s remove check_wire

# Steevertus attemt
scoreboard players set @s WireCount 0
tag @s remove WireS
tag @s remove WireN
tag @s remove WireW
tag @s remove WireE
tag @s remove WireU
tag @s remove WireD
tag @s remove WireEnd
tag @s remove WireEndE
tag @s remove WireEndW
tag @s remove WireEndN
tag @s remove WireEndS
tag @s remove WireEndU
tag @s remove WireEndD
tag @s remove WireStrWE
tag @s remove WireStrNS
tag @s remove WireStrUD
tag @s remove WireAlone
tag @s remove WireEnd
tag @s remove WireCorner
tag @s remove WireStraight
tag @s remove WireTInter
tag @s remove WireIntersection
item replace entity @s weapon.offhand with air
item replace entity @s weapon.mainhand with air
execute positioned ~1 ~ ~ if entity @e[tag=WireConnector,tag=!WireNoConnectE,distance=..0.8] run tag @s add WireE
execute positioned ~1 ~ ~ if entity @e[tag=WireConnector,tag=!WireNoConnectE,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~-1 ~ ~ if entity @e[tag=WireConnector,tag=!WireNoConnectW,distance=..0.8] run tag @s add WireW
execute positioned ~-1 ~ ~ if entity @e[tag=WireConnector,tag=!WireNoConnectW,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~1 ~ if entity @e[tag=WireConnector,tag=!WireNoConnectU,distance=..0.8] run tag @s add WireU
execute positioned ~ ~1 ~ if entity @e[tag=WireConnector,tag=!WireNoConnectU,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~-1 ~ if entity @e[tag=WireConnector,tag=!WireNoConnectD,distance=..0.8] run tag @s add WireD
execute positioned ~ ~-1 ~ if entity @e[tag=WireConnector,tag=!WireNoConnectD,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~ ~-1 if entity @e[tag=WireConnector,tag=!WireNoConnectN,distance=..0.8] run tag @s add WireN
execute positioned ~ ~ ~-1 if entity @e[tag=WireConnector,tag=!WireNoConnectN,distance=..0.8] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390010}
execute positioned ~ ~ ~-1 if entity @e[tag=WireConnector,tag=!WireNoConnectN,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~ ~1 if entity @e[tag=WireConnector,tag=!WireNoConnectS,distance=..0.8] run tag @s add WireS
execute positioned ~ ~ ~1 if entity @e[tag=WireConnector,tag=!WireNoConnectS,distance=..0.8] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390011}
execute positioned ~ ~ ~1 if entity @e[tag=WireConnector,tag=!WireNoConnectS,distance=..0.8] run scoreboard players add @s WireCount 1
#tooHigh
execute positioned ~1 ~1 ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectE,distance=..0.8] run tag @s add WireE
execute positioned ~1 ~1 ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectE,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~-1 ~1 ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectW,distance=..0.8] run tag @s add WireW
execute positioned ~-1 ~1 ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectW,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~2 ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectU,distance=..0.8] run tag @s add WireU
execute positioned ~ ~2 ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectU,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~ ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectD,distance=0.01..0.8] run tag @s add WireD
execute positioned ~ ~ ~ if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectD,distance=0.01..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~1 ~-1 if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectN,distance=..0.8] run tag @s add WireN
execute positioned ~ ~1 ~-1 if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectN,distance=..0.8] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390010}
execute positioned ~ ~1 ~-1 if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectN,distance=..0.8] run scoreboard players add @s WireCount 1
execute positioned ~ ~1 ~1 if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectS,distance=..0.8] run tag @s add WireS
execute positioned ~ ~1 ~1 if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectS,distance=..0.8] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390011}
execute positioned ~ ~1 ~1 if entity @e[tag=WireConnector,tag=tpHigher,tag=!WireNoConnectS,distance=..0.8] run scoreboard players add @s WireCount 1
# richtige Models laden
execute if entity @s[tag=WireN,tag=WireS] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390009}

execute if entity @s[tag=WireE,tag=!WireW,tag=!WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390004}

execute if entity @s[tag=!WireE,tag=WireW,tag=!WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390005}


###################################
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
            # ПРОДОЛЖИ #
###################################

execute if entity @s[tag=!WireE,tag=!WireW,tag=WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390013}

execute if entity @s[tag=WireE,tag=!WireW,tag=WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390007}

execute if entity @s[tag=!WireE,tag=WireW,tag=WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390006}

execute if entity @s[tag=WireE,tag=WireW,tag=!WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390003}

execute if entity @s[tag=WireE,tag=WireW,tag=WireU] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390008}

item replace entity @s armor.head with diamond_pickaxe{CustomModelData:3390002}
execute if entity @s[tag=WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add WireStraight
execute if entity @s[tag=WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add WireStrWE
execute if entity @s[tag=WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=east]
execute if entity @s[tag=WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390003}

execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=WireS,tag=!WireU,tag=!WireD] run tag @s add WireStraight
execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=WireS,tag=!WireU,tag=!WireD] run tag @s add WireStrNS
execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=WireS,tag=!WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=north]
execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=WireS,tag=!WireU,tag=!WireD] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390009}

execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=WireD] run tag @s add WireStraight
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=WireD] run tag @s add WireStrUD
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=up]
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=WireD] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390012}

execute if score @s WireCount matches 0 run tag @s add WireAlone
execute if score @s WireCount matches 0 run setblock ~ ~ ~ minecraft:flower_pot
execute if score @s WireCount matches 0 run item replace entity @s armor.head with diamond_pickaxe{CustomModelData:3390001}

execute if score @s WireCount matches 2 if entity @s[tag=!WireStraight] run tag @s add WireCorner
execute if score @s WireCount matches 2 if entity @s[tag=!WireStraight] run setblock ~ ~ ~ minecraft:flower_pot
execute if score @s WireCount matches 2 if entity @s[tag=!WireStraight] run item replace entity @s armor.head with diamond_pickaxe{CustomModelData:3390001}

execute if score @s WireCount matches 3 run tag @s add WireTInter
execute if score @s WireCount matches 3 run setblock ~ ~ ~ minecraft:flower_pot
execute if score @s WireCount matches 3 run item replace entity @s armor.head with diamond_pickaxe{CustomModelData:3390001}

execute if score @s WireCount matches 4 run tag @s add WireIntersection
execute if score @s WireCount matches 4 run setblock ~ ~ ~ minecraft:flower_pot
execute if score @s WireCount matches 4 run item replace entity @s armor.head with diamond_pickaxe{CustomModelData:3390001}

scoreboard players reset @s tpCableCount
execute if entity @s[tag=WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add tpCableEnd
execute if entity @s[tag=WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add tpCableEndE
execute if entity @s[tag=WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=west]
execute if entity @s[tag=WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390003}

execute if entity @s[tag=!WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add WireEnd
execute if entity @s[tag=!WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add WireEndW
execute if entity @s[tag=!WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=east]
execute if entity @s[tag=!WireE,tag=WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=!WireD] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390003}

execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add WireEnd
execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=!WireS,tag=!WireU,tag=!WireD] run tag @s add WireEndN
execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=!WireS,tag=!WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=south]
execute if entity @s[tag=!WireE,tag=!WireW,tag=WireN,tag=!WireS,tag=!WireU,tag=!WireD] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390009}

execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=WireS,tag=!WireU,tag=!WireD] run tag @s add WireEnd
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=WireS,tag=!WireU,tag=!WireD] run tag @s add WireEndS
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=WireS,tag=!WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=north]
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=WireS,tag=!WireU,tag=!WireD] run item replace entity @s weapon.offhand with diamond_pickaxe{CustomModelData:3390009}

execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=!WireD] run tag @s add WireEnd
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=!WireD] run tag @s add WireEndU
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=!WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=up]
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=WireU,tag=!WireD] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390012}

execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=WireD] run tag @s add WireEnd
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=WireD] run tag @s add WireEndD
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=WireD] run setblock ~ ~ ~ minecraft:end_rod[facing=down]
execute if entity @s[tag=!WireE,tag=!WireW,tag=!WireN,tag=!WireS,tag=!WireU,tag=WireD] run item replace entity @s weapon.mainhand with diamond_pickaxe{CustomModelData:3390012}
