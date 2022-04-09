scoreboard objectives add tempchance1 dummy

execute as @e[tag=glaugor_craft_start] if score @s tempchance1 matches 1 at @s unless entity @e[tag=cream_help] align xyz positioned ~0.5 ~-1 ~0.5 run summon area_effect_cloud ~2 ~ ~2 {Duration:1000000000,Tags:[cream_help]}
execute as @e[tag=glaugor_craft_start] if score @s tempchance1 matches 2 at @s unless entity @e[tag=cream_help] align xyz positioned ~0.5 ~-1 ~0.5 run summon area_effect_cloud ~-2 ~ ~-2 {Duration:1000000000,Tags:[cream_help]}
execute as @e[tag=glaugor_craft_start] if score @s tempchance1 matches 3 at @s unless entity @e[tag=cream_help] align xyz positioned ~0.5 ~-1 ~0.5 run summon area_effect_cloud ~-2 ~ ~2 {Duration:1000000000,Tags:[cream_help]}
execute as @e[tag=glaugor_craft_start] if score @s tempchance1 matches 4 at @s unless entity @e[tag=cream_help] align xyz positioned ~0.5 ~-1 ~0.5 run summon area_effect_cloud ~2 ~ ~-2 {Duration:1000000000,Tags:[cream_help]}

scoreboard players add @e[tag=cream_help] temptimer1 1

execute as @e[tag=cream_help] at @s run particle squid_ink ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute as @e[tag=cream_help] at @s unless score @s temptimer1 matches 60.. if entity @e[nbt={Item:{id:"minecraft:magma_cream",Count:1b}},distance=..0.7] run tag @s add cream_help+
execute as @e[tag=cream_help,tag=!cream_help+] at @s if score @s temptimer1 matches 60.. unless entity @e[nbt={Item:{id:"minecraft:magma_cream",Count:1b}},distance=..0.7] run tag @s add cream_help-

execute if entity @e[tag=glfail] run function summoner:custom_crafts/glaugor/glaugor_end



