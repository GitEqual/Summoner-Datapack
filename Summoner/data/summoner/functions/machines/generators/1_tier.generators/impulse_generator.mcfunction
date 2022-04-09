scoreboard objectives add imp_gen.interface_count dummy
scoreboard objectives add ItemCount.0 dummy
execute as @e[type=tnt,nbt={OnGround:1b}] at @s store result score @s imp_gen.interface_count if entity @e[tag=interface,distance=..1.1] 
execute as @e[type=tnt,nbt={OnGround:1b}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=imp_gen,distance=..0.5] run function summoner:machines/generators/1_tier.generators/impulse_generator_check
execute as @e[tag=imp_gen] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function summoner:machines/generators/1_tier.generators/impulse_generator_check
execute as @e[tag=imp_gen.destroy] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function summoner:machines/generators/1_tier.generators/impulse_generator_check
execute as @e[tag=imp_gen] at @s run particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 0.1 2
execute as @e[tag=interface,tag=!burn.1] at @s if entity @e[distance=..1.2,tag=imp_gen] unless entity @e[tag=add,distance=..1.2] if block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,id:"minecraft:firework_star",tag:{CustomModelData:1009}}]} run tag @s add burn.0
execute as @e[tag=interface] at @s if entity @e[distance=..1.2,tag=imp_gen] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,id:"minecraft:firework_star",tag:{CustomModelData:1009}}]} run tag @s remove burn.0
execute as @e[tag=interface] at @s if entity @e[distance=..1.2,tag=imp_gen] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:13b,id:"minecraft:firework_star",tag:{CustomModelData:1009}}]} run scoreboard players reset @s ItemCount.0
execute as @e[tag=burn.0] at @s store result score @s ItemCount.0 run data get block ~ ~ ~ Items[13].Count
execute as @e[tag=burn.0] run scoreboard players remove @s ItemCount.0 1
execute as @e[tag=burn.0] run tag @s add burn.1
execute as @e[tag=burn.1] at @s at @e[tag=imp_gen,distance=..1.2] run tag @e[tag=showcase] add add
execute as @e[tag=burn.1] at @s if entity @e[tag=add] run tag @s add burn.2
execute as @e[tag=burn.0] at @s store result block ~ ~ ~ Items[13].Count byte 1 run scoreboard players get @s ItemCount.0
execute as @e[tag=burn.2] run tag @s remove burn.0
execute as @e[tag=burn.2] run tag @s remove burn.1
execute as @e[tag=add] run scoreboard players add @s Timer 1
execute as @e[tag=add] run scoreboard players add @s mana 1
execute as @e[tag=imp_gen] at @s run scoreboard players operation @s mana = @e[tag=add,distance=..1.2] mana
execute as @e[tag=add] at @s if score @s Timer matches 600.. run tag @e[tag=burn.2,distance=..1.2] remove burn.2
execute as @e[tag=add] at @s if score @s Timer matches 1..20 unless entity @e[tag=showcase.item] run summon item ~ ~1 ~ {Item:{id:"firework_star",Count:1b,tag:{CustomModelData:1009,Enchantments:[{}]}},PickupDelay:-2031098301,Tags:[showcase.item]}
execute as @e[tag=add] at @s if score @s Timer matches 600.. run kill @e[tag=showcase.item,distance=..2,limit=1,sort=nearest]
execute as @e[tag=add] at @s if score @s Timer matches 600.. run tag @s remove add
execute as @e[tag=showcase] if score @s Timer matches 600.. run scoreboard players reset @s Timer
execute as @e[tag=showcase.item] at @s run particle electric_spark ~ ~0.35 ~ 0.1 0.1 0.1 0.1 2


