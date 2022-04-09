execute if score #t Timer matches 2.. run function summoner:custom_blocks/slow_clock

execute as @e[tag=Wire] at @s if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Tags: [WireTemp],Invisible:1,Marker:1,NoGravity:1}
execute as @e[tag=Wire] at @s if block ~ ~ ~ air run kill @e[type=item,distance=..0.5,limit=1,sort=nearest]
execute as @e[tag=Wire] at @s if block ~ ~ ~ air run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{},CustomModelData:3390002,isTekPack:1,HideFlags:6}}}
execute as @e[tag=Wire] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=WireTemp] at @s positioned ~1 ~ ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=WireTemp] at @s positioned ~-1 ~ ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=WireTemp] at @s positioned ~ ~1 ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=WireTemp] at @s positioned ~ ~-1 ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=WireTemp] at @s positioned ~ ~ ~-1 as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=WireTemp] at @s positioned ~ ~ ~1 as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=WireTemp] at @s run kill @s