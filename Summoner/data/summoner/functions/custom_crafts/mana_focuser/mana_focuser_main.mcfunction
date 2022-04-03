# Structure
execute as @e[type=item,nbt={Item:{tag:{Tags:[glaugor]}},OnGround:1b}] at @s align xyz if block ~ ~-1 ~ soul_soil if block ~ ~-2 ~ soul_sand if block ~ ~-3 ~ crying_obsidian if block ~ ~-4 ~ ancient_debris if block ~ ~-5 ~ end_rod if block ~ ~-6 ~ light_blue_stained_glass_pane if block ~ ~-8 ~ enchanting_table if block ~-1 ~-1 ~ blackstone_stairs[facing=east,shape=straight,half=bottom] if block ~-1 ~-2 ~ soul_soil if block ~-1 ~-3 ~ chain[axis=y] if block ~-1 ~-4 ~ chain[axis=y] if block ~-1 ~-5 ~ chain[axis=y] if block ~-1 ~-6 ~ soul_lantern[hanging=true] if block ~-2 ~-1 ~ soul_lantern[hanging=false] if block ~-2 ~-2 ~ blackstone_stairs[facing=east,half=top,shape=straight] if block ~-1 ~-1 ~ blackstone_stairs[facing=east,shape=straight,half=bottom] if block ~-1 ~-2 ~ soul_soil if block ~-1 ~-3 ~ chain[axis=y] if block ~-1 ~-4 ~ chain[axis=y] if block ~-1 ~-5 ~ chain[axis=y] if block ~-1 ~-6 ~ soul_lantern[hanging=true] if block ~-2 ~-1 ~ soul_lantern[hanging=false] if block ~-2 ~-2 ~ blackstone_stairs[facing=east,half=top,shape=straight] if block ~ ~-1 ~1 blackstone_stairs[facing=north,shape=straight,half=bottom] if block ~ ~-2 ~1 soul_soil if block ~ ~-3 ~1 chain[axis=y] if block ~ ~-4 ~1 chain[axis=y] if block ~ ~-5 ~1 chain[axis=y] if block ~ ~-6 ~1 soul_lantern[hanging=true] if block ~ ~-1 ~2 soul_lantern[hanging=false] if block ~ ~-2 ~2 blackstone_stairs[facing=north,half=top,shape=straight] if block ~ ~-1 ~-1 blackstone_stairs[facing=south,shape=straight,half=bottom] if block ~ ~-2 ~-1 soul_soil if block ~ ~-3 ~-1 chain[axis=y] if block ~ ~-4 ~-1 chain[axis=y] if block ~ ~-5 ~-1 chain[axis=y] if block ~ ~-6 ~-1 soul_lantern[hanging=true] if block ~ ~-1 ~-2 soul_lantern[hanging=false] if block ~ ~-2 ~-2 blackstone_stairs[facing=south,half=top,shape=straight] align xz run summon armor_stand ~0.9 ~-1.6 ~-0.06 {Invisible:1,NoGravity:1,Tags:["mana_focuser_started"],ShowArms:1,HandItems:[{Count:1,id:"minecraft:ender_eye",tag:{Enchantments:[{}]}}],Pose:{RightArm:[-90.0f,0.0f,0.0f]}}
execute as @e[tag=mana_focuser_started] at @s run kill @e[type=item,distance=..2.5,nbt={Item:{tag:{Tags:[glaugor]}}}]

# Activating
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s run tp @s ~ ~-0.005 ~
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s if block ~ ~2 ~ soul_soil run summon lightning_bolt ~-0.4 ~3 ~0.53
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s if block ~ ~2 ~ soul_soil run setblock ~ ~4 ~1 soul_fire
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s if block ~ ~2 ~ soul_soil run summon armor_stand ~-0.4 ~-6 ~0.5 {Invisible:1b,NoGravity:1b,Tags:["full_mana_focuser"]}
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s if block ~ ~2 ~ soul_soil run data merge entity @s {Tags:["mana_focuser_end"]}

execute as @e[type=armor_stand,tag=mana_focuser_end] at @s if block ~ ~2 ~ soul_soil run kill @s
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s run particle soul ~-0.4 ~1.7 ~0.53 0 0 0 0.07 1 force
execute as @e[type=armor_stand,tag=mana_focuser_started] at @s run particle block soul_sand ~-0.4 ~1.7 ~0.53 0.1 0.1 0.1 0.5 5 force
execute as @e[type=armor_stand,tag=full_mana_focuser] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[type=armor_stand,tag=full_mana_focuser] at @s run particle dripping_obsidian_tear ^1 ^2 ^ 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=full_mana_focuser] at @s run particle dripping_obsidian_tear ^-1 ^2 ^ 0 0 0 0.1 1 force
execute as @e[type=armor_stand,tag=full_mana_focuser] at @s run particle soul_fire_flame ~ ~1.5 ~ 0.25 0.25 0.25 0.1 3 force


# Mana Regeneration (Mana Focuser)
scoreboard objectives add MFmana dummy
execute if block 0 1 0 daylight_detector[power=15] run scoreboard players add @e[tag=full_mana_focuser] MFmana 1
# Crafting System

# Adding matras
execute as @e[type=item,nbt={Item:{tag:{Tags:[{Mantras:["Empty"]}]}}}] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] HandItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ enchanting_table if entity @e[tag=full_mana_focuser,distance=..2] run tag @s add MFcraft.0
execute as @e[type=item,tag=MFcraft.0] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] HandItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] run data modify entity @s {} prepend value {PickupDelay:-1}
execute as @e[type=item,tag=MFcraft.0] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] HandItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] run item replace entity @e[tag=MScopy,sort=nearest,limit=1,tag=!wait] armor.chest with air
execute as @e[type=item,tag=MFcraft.0] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] HandItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] run tag @e[tag=MScopy,sort=nearest,limit=1,tag=!wait] add return

execute as @e[type=item,nbt={Item:{tag:{Tags:[{Mantras:["Empty"]}]}}}] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] ArmorItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ enchanting_table if entity @e[tag=full_mana_focuser,distance=..2] run tag @s add MFcraft.0
execute as @e[type=item,tag=MFcraft.0] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] ArmorItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] run data modify entity @s {} prepend value {PickupDelay:-1}
execute as @e[type=item,tag=MFcraft.0] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] ArmorItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] run item replace entity @e[tag=MScopy,sort=nearest,limit=1,tag=!wait] armor.chest with air
execute as @e[type=item,tag=MFcraft.0] at @s if data entity @e[tag=MScopy,sort=nearest,limit=1,distance=..10] ArmorItems[{tag:{Tags:[{Mantras:["void_resist"],MantraDifficult:1}]}}] run tag @e[tag=MScopy,sort=nearest,limit=1,tag=!wait] add return

execute as @e[tag=return,tag=!wait] at @s run item replace block ~ ~ ~ container.4 with air
execute as @e[tag=return] if entity @e[tag=MFdrain] run tag @s add wait
execute as @e[tag=wait] run tag @s remove return
execute as @e[tag=MFcraft.0] at @s align xyz positioned ~0.5 ~1 ~0.5 run tp ~ ~ ~
execute as @e[tag=MFcraft.0] at @s if entity @e[tag=full_mana_focuser,distance=..2] run tag @s add MFdrain
execute as @e[tag=MFdrain] at @s run particle minecraft:enchanted_hit ~ ~0.6 ~ 0 0.3 0 0 3
execute as @e[tag=MFdrain] at @s run particle minecraft:block enchanting_table ~ ~ ~ 0 0.3 0 0 3
execute as @e[tag=MFdrain] at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.5 10
execute as @e[tag=MFdrain] run scoreboard players add @s Timer 1
execute as @e[tag=MFdrain] run data merge entity @s {PickupDelay:-1}
execute as @e[tag=MFdrain] at @s run scoreboard players remove @e[tag=full_mana_focuser,distance=..2] MFmana 2
execute as @e[tag=MFdrain] if score @s Timer matches 100.. run tag @s add MFcraft.1
execute as @e[tag=MFcraft.1] if score @s Timer matches 100.. run tag @s remove MFdrain
execute as @e[tag=MFcraft.1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'[{"text":"Weak Power Crystall"}]',Lore:['[{"text":"Void Resistance","color":"gold"}]']},Tags:[{CrystallLevel:1b,Mantras:["void_resist"]}],Enchantments:[{}]}},PickupDelay:30}
execute as @e[tag=MFcraft.1] run tag @s add del
execute as @e[tag=wait] if entity @e[tag=MFcraft.1] run tag @s remove wait
kill @e[tag=del]

# Mana Regeneration (Player)
scoreboard players add @a manaR 1
execute as @a if score @s manaR matches 70.. run scoreboard players add @s mana 10
execute as @a if score @s manaR matches 70.. run scoreboard players reset @s manaR
execute as @a if score @s mana matches 200.. run scoreboard players set @s mana 200
execute as @a if score @s mana matches ..0 run scoreboard players set @s mana 0

# $smth else$
