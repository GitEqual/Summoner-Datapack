execute as @e[tag=craft_cdone] at @s if entity @e[tag=craft_cmade,distance=..1.5] run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.1 50 force
execute as @e[tag=craft_cdone] at @s if entity @e[tag=craft_cmade,distance=..1.5] run playsound minecraft:block.brewing_stand.brew master @a 
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_cdone
