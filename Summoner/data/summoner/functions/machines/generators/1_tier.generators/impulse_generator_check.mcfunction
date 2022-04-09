execute if block ~ ~-1 ~ crying_obsidian if block ~ ~-1 ~-1 purpur_block if block ~ ~-1 ~1 purpur_block if block ~-1 ~-1 ~ purpur_block if block ~1 ~-1 ~ purpur_block if block ~-1 ~-1 ~-1 obsidian if block ~1 ~-1 ~-1 obsidian if block ~-1 ~-1 ~1 obsidian if block ~1 ~-1 ~1 obsidian if block ~ ~ ~-1 #impulse_generator_valid if block ~ ~ ~1 #impulse_generator_valid if block ~1 ~ ~ #impulse_generator_valid if block ~-1 ~ ~ #impulse_generator_valid if block ~1 ~ ~1 obsidian if block ~-1 ~ ~1 obsidian if block ~1 ~ ~-1 obsidian if block ~-1 ~ ~-1 obsidian if block ~ ~1 ~ #impulse_generator_valid if block ~1 ~1 ~ purpur_block if block ~-1 ~1 ~ purpur_block if block ~ ~1 ~1 purpur_block if block ~ ~1 ~-1 purpur_block if block ~1 ~1 ~1 obsidian if block ~1 ~1 ~-1 obsidian if block ~-1 ~1 ~1 obsidian if block ~-1 ~1 ~-1 obsidian if score @s imp_gen.interface_count matches 1 run data merge entity @s {Fuse:-200s,Tags:[imp_gen.create]}
execute as @e[tag=imp_gen.create] at @s run setblock ~ ~ ~ air
execute as @e[tag=imp_gen.create] at @s run summon marker ~ ~0.5 ~ {Tags:[imp_gen]}
execute as @e[tag=imp_gen.create] at @s run tag @e[tag=interface] add 1
execute as @e[tag=imp_gen.create] run playsound entity.generic.explode master @a ~ ~ ~ 5
execute as @e[tag=imp_gen.create] run particle explosion_emitter ~ ~ ~ 1 1 1 0.1 5 force
execute as @e[tag=imp_gen.create] at @s at @e[tag=imp_gen,distance=..1.2] unless entity @e[tag=showcase,distance=..1.2] run summon armor_stand ~ ~-1 ~ {Invisible:1b,NoGravity:1b,ShowArms:1b,Small:1b,Marker:1b,Tags:[showcase]}
execute as @e[tag=imp_gen.create] run kill @s

execute as @e[tag=imp_gen] at @s unless entity @e[tag=interface] run tag @s add imp_gen.destroy
execute as @e[tag=imp_gen.destroy] at @s run summon tnt ~ ~ ~
execute as @e[tag=imp_gen.destroy] at @s run kill @e[tag=showcase,distance=..1.2]
execute as @e[tag=imp_gen.destroy] at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 10
execute as @e[tag=imp_gen.destroy] at @s run particle angry_villager ~ ~ ~ 1 1 1 0.1 10 force
execute as @e[tag=imp_gen.destroy] run kill @s

