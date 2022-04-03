## Magic Cauldron
# Structure
#Z oriented Magic Cauldron
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",tag:{tag:enchanted_pearl}},OnGround:1b}] at @s align xyz run execute if block ~ ~ ~ cauldron if block ~ ~-2 ~ lava if block ~ ~2 ~ soul_lantern[hanging=true] if block ~ ~3 ~ stone_bricks if block ~ ~4 ~ diamond_block if block ~ ~5 ~ light_blue_stained_glass_pane if block ~ ~6 ~ light_blue_stained_glass_pane if block ~ ~7 ~ light_blue_stained_glass_pane if block ~1 ~-1 ~ stone_bricks if block ~1 ~1 ~ stone_brick_stairs[facing=east,half=top,shape=straight] if block ~1 ~2 ~ chiseled_stone_bricks if block ~1 ~3 ~ stone_brick_stairs[facing=west,half=bottom,shape=straight] if block ~-1 ~-1 ~ stone_bricks if block ~-1 ~1 ~ stone_brick_stairs[facing=west,half=top,shape=straight] if block ~-1 ~2 ~ chiseled_stone_bricks if block ~-1 ~3 ~ stone_brick_stairs[facing=east,half=bottom,shape=straight] if block ~2 ~-1 ~ stone_bricks if block ~2 ~ ~ chiseled_stone_bricks if block ~2 ~1 ~ stone_brick_stairs[facing=west,half=bottom,shape=straight] if block ~-2 ~-1 ~ stone_bricks if block ~-2 ~ ~ chiseled_stone_bricks if block ~-2 ~1 ~ stone_brick_stairs[facing=east,half=bottom,shape=straight] if block ~ ~-1 ~-1 stone_brick_stairs[facing=south,half=bottom,shape=straight] if block ~ ~-1 ~1 stone_brick_stairs[facing=north,half=bottom,shape=straight] if block ~1 ~-1 ~-1 stone_brick_stairs[facing=west,half=bottom,shape=outer_left] if block ~-1 ~-1 ~-1 stone_brick_stairs[facing=east,half=bottom,shape=outer_right] if block ~1 ~-1 ~1 stone_brick_stairs[facing=west,half=bottom,shape=outer_right] if block ~-1 ~-1 ~1 stone_brick_stairs[facing=east,half=bottom,shape=outer_left] run summon item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{id:""}]}},Motion:[0.0,0.07,0.0],Tags:["magic_cauldron_activating"],NoGravity:1b,PickupDelay:2000000000}
#X oriented Magic Cauldron
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald",tag:{tag:enchanted_pearl}},OnGround:1b}] at @s align xyz run execute if block ~ ~ ~ cauldron if block ~ ~-2 ~ lava if block ~ ~2 ~ soul_lantern[hanging=true] if block ~ ~3 ~ stone_bricks if block ~ ~4 ~ diamond_block if block ~ ~5 ~ light_blue_stained_glass_pane if block ~ ~6 ~ light_blue_stained_glass_pane if block ~ ~7 ~ light_blue_stained_glass_pane if block ~ ~-1 ~1 stone_bricks if block ~ ~1 ~1 stone_brick_stairs[facing=south,half=top,shape=straight] if block ~ ~2 ~1 chiseled_stone_bricks if block ~ ~3 ~1 stone_brick_stairs[facing=north,half=bottom,shape=straight] if block ~ ~-1 ~-1 stone_bricks if block ~ ~1 ~-1 stone_brick_stairs[facing=north,half=top,shape=straight] if block ~ ~2 ~-1 chiseled_stone_bricks if block ~ ~3 ~-1 stone_brick_stairs[facing=south,half=bottom,shape=straight] if block ~ ~-1 ~2 stone_bricks if block ~ ~ ~2 chiseled_stone_bricks if block ~ ~1 ~2 stone_brick_stairs[facing=north,half=bottom,shape=straight] if block ~ ~-1 ~-2 stone_bricks if block ~ ~ ~-2 chiseled_stone_bricks if block ~ ~1 ~-2 stone_brick_stairs[facing=south,half=bottom,shape=straight] if block ~-1 ~-1 ~ stone_brick_stairs[facing=east,half=bottom,shape=straight] if block ~1 ~-1 ~ stone_brick_stairs[facing=west,half=bottom,shape=straight] if block ~-1 ~-1 ~1 stone_brick_stairs[facing=north,half=bottom,shape=outer_right] if block ~-1 ~-1 ~-1 stone_brick_stairs[facing=south,half=bottom,shape=outer_left] if block ~1 ~-1 ~1 stone_brick_stairs[facing=north,half=bottom,shape=outer_left] if block ~1 ~-1 ~-1 stone_brick_stairs[facing=south,half=bottom,shape=outer_right] run summon item ~0.5 ~0.5 ~0.5 {Item:{id:"minecraft:emerald",Count:1b,tag:{Enchantments:[{id:""}]}},Motion:[0.0,0.07,0.0],Tags:["magic_cauldron_activating"],NoGravity:1b,PickupDelay:2000000000}
# Activating
execute if entity @e[tag=magic_cauldron_activating] as @e[tag=magic_cauldron_activating] at @s run kill @e[distance=..2,nbt={Item:{tag:{tag:enchanted_pearl}}}]
execute as @e[tag=magic_cauldron_activating] if entity @s run scoreboard players add @s Timer 1
execute as @e[tag=magic_cauldron_activating] if score @s Timer matches 16.. run data merge entity @s {Motion:[0.0,0.0,0.0],Tags:["magic_cauldron_activating2"]}
execute as @e[tag=magic_cauldron_activating] if score @s Timer matches 16.. run scoreboard players reset @s Timer
# Activating 2
execute if entity @e[tag=magic_cauldron_activating2] as @e[tag=magic_cauldron_activating2] at @s run particle block emerald_block ~ ~0.2 ~ 0.1 0.1 0.1 0.1 3 force
execute if entity @e[tag=magic_cauldron_activating2] as @e[tag=magic_cauldron_activating2] at @s run particle end_rod ~ ~0.2 ~ 0.1 0.1 0.1 0.1 3 force
execute if entity @e[tag=magic_cauldron_activating2] as @e[tag=magic_cauldron_activating2] at @s run scoreboard players add @s Timer 1 
# End
execute as @e[tag=magic_cauldron_activating2] if score @s Timer matches 100.. run data merge entity @s {Tags:["magic_cauldron_end"]}
execute as @e[tag=magic_cauldron_end] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.3 30 force
execute as @e[tag=magic_cauldron_end] at @s run summon armor_stand ~ ~-1 ~ {Invisible:1,Tags:["full_cauldron"]}
execute as @e[tag=magic_cauldron_end] run kill @s

# Particles
execute as @e[tag=full_cauldron] at @s if block ~ ~ ~ cauldron run particle smoke ~ ~0.5 ~ 0.02 0.05 0.02 0.1 4 force
execute as @e[tag=craft_c] at @s run particle campfire_cosy_smoke ~ ~0.5 ~ 0.01 0.01 0.01 0.1 5 force

# Craft
execute as @e[tag=run_c_craft] at @s if entity @e[type=item,distance=..2] run function summoner:custom_crafts/magic_cauldron/item_craft
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] run tag @s add craft_c1
execute as @e[type=minecraft:armor_stand,tag=craft_c] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c] if entity @s run scoreboard players add @s Timer 1
execute as @e[type=minecraft:armor_stand,tag=craft_c] if score @s Timer matches 100.. run tag @s add craft_cdone
execute as @e[type=minecraft:armor_stand,tag=craft_c] if score @s Timer matches 100.. run function summoner:custom_crafts/magic_cauldron/crafting

execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run function summoner:custom_crafts/magic_cauldron/crafting_done
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run scoreboard players reset @s Timer
execute at @e[type=minecraft:armor_stand,tag=craft_cdone] run kill @e[type=item,tag=trash,distance=..0.5]


execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run function summoner:custom_crafts/magic_cauldron/item_craft
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run function summoner:custom_crafts/magic_cauldron/craft_end



# Glass
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[hotglass]}}}] run scoreboard players add @s Timer 1
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[-hotglass]}}}] run scoreboard players add @s Timer 1
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[--hotglass]}}}] run scoreboard players add @s Timer 1
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[---hotglass]}}}] run scoreboard players add @s Timer 1

execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[hotglass]}}}] if score @s Timer matches 63.. run data merge entity @s {Item:{id:"minecraft:orange_stained_glass",tag:{Tags:["-hotglass","hg"],display:{Name:'[{"text":"Cloudy Glass","color":"gray"}]'}}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[-hotglass]}}}] if score @s Timer matches 61.. run scoreboard players reset @s Timer
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[-hotglass]}}}] if score @s Timer matches 59.. run data merge entity @s {Item:{tag:{Tags:[-+hotglass]}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[-+hotglass]}}}] if score @s Timer matches 57.. run data merge entity @s {Item:{id:"minecraft:yellow_stained_glass",tag:{Tags:["--hotglass","hg"],display:{Name:'[{"text":"Cloudy Glass","color":"gray"}]'}}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[--hotglass]}}}] if score @s Timer matches 55.. run scoreboard players reset @s Timer
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[--hotglass]}}}] if score @s Timer matches 53.. run data merge entity @s {Item:{tag:{Tags:[--+hotglass]}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[--+hotglass]}}}] if score @s Timer matches 51.. run data merge entity @s {Item:{id:"minecraft:gray_stained_glass",tag:{Tags:["---hotglass","hg"],display:{Name:'[{"text":"Cloudy Glass","color":"gray"}]'}}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[---hotglass]}}}] if score @s Timer matches 49.. run scoreboard players reset @s Timer
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[---hotglass]}}}] if score @s Timer matches 47.. run data merge entity @s {Item:{tag:{Tags:[---+hotglass]}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[---+hotglass]}}}] if score @s Timer matches 45.. run data merge entity @s {Item:{id:"minecraft:white_stained_glass",tag:{Tags:["cloudyglass"],display:{Name:'[{"text":"Cloudy Glass","color":"gray"}]'}}}}
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[cloudyglass]}}}] if score @s Timer matches 45.. run scoreboard players reset @s

execute as @a if data entity @s Inventory[{tag:{Tags:[hg]}}] run function summoner:custom_crafts/strained_glass/incaglass_shatter
execute at @e[type=minecraft:item,nbt={Item:{tag:{Tags:[hg]}}},tag=th,tag=!said] if block ~ ~ ~ minecraft:water run function summoner:custom_crafts/strained_glass/strglass_fail
execute at @e[type=minecraft:item,nbt={Item:{tag:{Tags:[hg]}}},tag=!th] if block ~ ~ ~ minecraft:water run function summoner:custom_crafts/strained_glass/strglass
execute as @e[type=minecraft:item,nbt={Item:{tag:{Tags:[hg]}}}] at @s if entity @e[tag=full_cauldron,distance=..7] run tag @s add th
execute as @e[tag=run_c_craft] at @s run kill @s

execute as @a if data entity @s Inventory[{tag:{Tags:[hotglass]}}] at @s run particle flame ~ ~0.65 ~ 0.1 0.1 0.1 0.05 1
execute as @a if data entity @s Inventory[{tag:{Tags:[hotglass]}}] at @s if block ~ ~ ~ air run setblock ~ ~ ~ fire
execute as @a if data entity @s Inventory[{tag:{Tags:[hotglass]}}] run effect give @s minecraft:wither 2 5 true
execute as @a if data entity @s Inventory[{tag:{Tags:[hotglass]}}] run effect give @s minecraft:instant_damage 1 0 true
execute as @a if data entity @s Inventory[{tag:{Tags:[-hotglass]}}] run effect give @s minecraft:wither 2 3 true
execute as @a if data entity @s Inventory[{tag:{Tags:[--hotglass]}}] run effect give @s minecraft:wither 2 2 true
execute as @a if data entity @s Inventory[{tag:{Tags:[---hotglass]}}] run effect give @s minecraft:wither 2 1 true

execute as @a if score @s tempdeath1 matches 1.. run scoreboard objectives remove tempdeath1

# Decay
kill @e[type=item,tag=trash]