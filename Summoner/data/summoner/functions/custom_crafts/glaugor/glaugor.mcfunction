scoreboard objectives add tempPos1 dummy "tempPos1"
scoreboard objectives add temptimer1 dummy "temptimer1"
execute as @e[nbt={Item:{id:"minecraft:ender_eye",Count:1b}},nbt=!{Item:{tag:{Tags:[glaugor]}}}] at @s if predicate item.in_nether.basalt_deltas store result score @s tempPos1 run data get entity @s Pos[1]

execute as @e[nbt={Item:{id:"minecraft:ender_eye",Count:1b}},nbt=!{Item:{tag:{Tags:[glaugor]}}}] at @s if predicate item.in_nether.basalt_deltas if entity @e[nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..0.5] if score @s tempPos1 matches ..15 align xyz if block ~ ~-1 ~ polished_basalt[axis=y] if block ~2 ~-1 ~2 polished_basalt[axis=y] if block ~2 ~-1 ~-2 polished_basalt[axis=y] if block ~-2 ~-1 ~2 polished_basalt[axis=y] if block ~-2 ~-1 ~-2 polished_basalt[axis=y] run tag @s add glaugor_craft_1start

execute as @e[tag=glaugor_craft_start] if predicate minecraft:0.2_chance run scoreboard players set @s tempchance1 1
execute as @e[tag=glaugor_craft_start] if predicate minecraft:0.2_chance run scoreboard players set @s tempchance1 2
execute as @e[tag=glaugor_craft_start] if predicate minecraft:0.2_chance run scoreboard players set @s tempchance1 3
execute as @e[tag=glaugor_craft_start] if predicate minecraft:0.2_chance run scoreboard players set @s tempchance1 4

execute as @e[tag=glaugor_craft_1start,tag=!glaugor_craft_start] at @s run particle minecraft:dragon_breath ~ ~ ~ 0.01 0.01 0.01 0.05 30
execute as @e[tag=glaugor_craft_1start,tag=!glaugor_craft_start] at @s run playsound entity.enderman.teleport master @a ~ ~ ~
execute as @e[tag=glaugor_craft_1start,tag=!glaugor_craft_start] at @s run stopsound @a[distance=..40] master minecraft:music.dragon
execute as @e[tag=glaugor_craft_1start,tag=!glaugor_craft_start] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0]}
execute as @e[tag=glaugor_craft_start,tag=!glaugor_craft_1start] at @s run particle minecraft:portal ~ ~0.2 ~ 0.01 0.01 0.01 1 5
execute as @e[tag=glaugor_craft_1start,tag=!glaugor_craft_start] at @s align xyz run summon item ~0.5 ~1 ~0.5 {Item:{id:"minecraft:ender_eye",Count:1b},Tags:["glaugor_craft_start"],NoGravity:1b,PickupDelay:-1} 
execute as @e[tag=glaugor_craft_start,tag=!glaugor_craft_1start] at @s run kill @e[tag=glaugor_craft_1start]
execute as @e[tag=glaugor_craft_start] run tag @s remove glaugor_craft_1start

execute as @e[nbt={Item:{id:"minecraft:nether_star",Count:1b}},tag=!star] at @s if entity @e[tag=glaugor_craft_start,distance=..2] run tag @s add star
execute as @e[tag=star] at @s if entity @e[tag=glaugor_craft_start,distance=..3] run particle minecraft:witch ~ ~0.3 ~ 0 0.7 0 0.1 0
execute as @e[tag=star] unless entity @e[tag=glfail] run data merge entity @s {PickupDelay:-1}
execute as @e[tag=star] at @s align xyz positioned ~0.5 ~ ~0.5 run tp ~ ~ ~

execute as @e[tag=glaugor_craft_start,tag=!glfail] run scoreboard players add @s Timer 10
execute as @e[tag=glaugor_craft_start,tag=!glfail] unless entity @e[tag=cream_help+] run scoreboard players add @s temptimer1 1

execute as @e[tag=glaugor_craft_start] if entity @e[tag=cream_help-] run tag @s add glfail

execute as @e[tag=glaugor_craft_start] unless entity @e[tag=cream_help+] if score @s temptimer1 matches 100..160 run function summoner:custom_crafts/glaugor/glaugor_1

execute as @e[tag=cream_help+] at @s if entity @e[tag=glaugor_craft_start,distance=..5] run playsound block.end_portal_frame.fill master @a ~ ~ ~
execute as @e[tag=cream_help+] at @s if entity @e[tag=glaugor_craft_start,distance=..5] run kill @e[nbt={Item:{id:"minecraft:magma_cream",Count:1b}},distance=..0.7,limit=1]
execute as @e[tag=glaugor_craft_start] if entity @e[tag=cream_help+] run scoreboard players reset @s temptimer1
execute as @e[tag=cream_help+] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 100
execute as @e[tag=cream_help+] at @s run particle dust 1 40 0 3 ~ ~ ~ 0.1 0.1 0.1 1 100
execute as @e[tag=cream_help+] at @s if entity @e[distance=..5,tag=glaugor_craft_start] run kill @s

execute as @e[tag=glaugor_craft_start,tag=!glfail] if score @s Timer matches 5000.. run function summoner:custom_crafts/glaugor/glaugor_end

execute as @e[tag=glaugorboom] run scoreboard players add @s Timer 1
execute as @e[tag=glaugorsummon] run scoreboard players add @s Timer 1


execute as @e[tag=glaugorboom] at @s if score @s Timer matches 20..40 unless block ~ ~-1 ~ obsidian run setblock ~ ~-1 ~ obsidian destroy
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 20..40 run fill ~1 ~1 ~1 ~-1 ~1 ~-1 air destroy
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 40..41 run function summoner:particles/star
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 40..41 run playsound block.end_portal_frame.fill master @a ~ ~ ~ 100 0
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 50..51 run function summoner:particles/symbol1
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 50..51 run playsound block.end_portal_frame.fill master @a ~ ~ ~ 100 0
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 60..61 positioned ~0.85 ~ ~ run function summoner:particles/symbol2
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 60..61 run playsound block.end_portal_frame.fill master @a ~ ~ ~ 100 0

execute as @e[tag=glaugorboom] at @s if score @s Timer matches 99.. run summon area_effect_cloud ~ ~2 ~ {Duration:1000000000,Tags:[glaugorsummon]}
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 99.. run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 100 0
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 99.. run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 100
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 99.. run playsound minecraft:music.dragon master @a ~ ~ ~ 100
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 50..52 run playsound entity.tnt.primed master @a ~ ~ ~ 100 0
execute as @e[tag=glaugorboom] at @s if score @s Timer matches 99.. run summon minecraft:fireball ~ ~-2 ~ {ExplosionPower:100,Motion:[0.0,-1.0,0.0]}
execute as @e[tag=glaugorsummon] at @s if score @s Timer matches 200.. run summon minecraft:item ~ ~1 ~ {Item:{id:"ender_eye",Count:1,tag:{display:{Name:'[{"text":"Glaugor","color":"dark_green","underlined":true,"italic":true,"bold":true},{"text":"","color":"dark_green","underlined":false,"italic":false,"bold":false}]',Lore:['[{"text":"?????","bold":true,"italic":true,"color":"dark_red","obfuscated":true}]']},Tags:[glaugor],Enchantments:[{}]}},NoGravity:1b,PickupDelay:40s,Tags:[glaugor]}
execute as @e[tag=glaugorsummon] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute as @e[tag=glaugorsummon] at @s if entity @e[tag=glaugor,distance=..1] run kill @s