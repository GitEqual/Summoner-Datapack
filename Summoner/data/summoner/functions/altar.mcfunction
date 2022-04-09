# Dragon Altar
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye"},OnGround:1b}] at @s align xyz if block ~ ~-1 ~ dragon_egg if block ~ ~-2 ~ lodestone if block ~ ~-2 ~1 obsidian if block ~ ~-2 ~-1 obsidian if block ~1 ~-2 ~ obsidian if block ~-1 ~-2 ~ obsidian if block ~1 ~-2 ~1 nether_bricks if block ~1 ~-2 ~-1 nether_bricks if block ~-1 ~-2 ~1 nether_bricks if block ~-1 ~-2 ~-1 nether_bricks if block ~2 ~-2 ~ nether_brick_stairs if block ~-2 ~-2 ~ nether_brick_stairs if block ~ ~-2 ~2 nether_brick_stairs if block ~ ~-2 ~-2 nether_brick_stairs unless entity @e[type=armor_stand,tag=full_altar1] run tag @s add creating_altar
execute if entity @e[tag=creating_altar_started] run scoreboard players add time Timer 1
execute if entity @e[tag=creating_altar_started] run scoreboard players add time2 Timer 1
execute at @e[tag=creating_altar_started] if score time2 Timer matches 80.. run playsound block.beacon.ambient master @a[distance=..40]
execute at @e[tag=creating_altar_started] if score time2 Timer matches 80.. run scoreboard players reset time2 Timer
execute at @e[tag=creating_altar_started] run particle enchant ~ ~1.5 ~ 0 0 0 1 5 force

execute at @e[tag=creating_altar_started] run particle smoke ~ ~-3 ~ 0 0 0 0.4 10 force
execute if score time Timer matches 100.. as @e[tag=creating_altar_started] run data merge entity @s {NoGravity:0b,Motion:[0.0,0.5,0.0],Tags:["creating_altar_end"]}
execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run summon armor_stand ~ ~-2.5 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["full_altar1"]}
execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run playsound minecraft:block.end_portal.spawn master @a[distance=..20] ~ ~ ~
execute if entity @e[type=minecraft:armor_stand,tag=full_altar1] at @e[type=minecraft:armor_stand,tag=full_altar1] run tp @e[type=minecraft:armor_stand,tag=full_altar1] ~ ~ ~ ~10 ~
execute if entity @e[type=minecraft:armor_stand,tag=full_altar1] at @e[type=minecraft:armor_stand,tag=full_altar1] positioned ~ ~2 ~ run particle minecraft:soul ^1 ^ ^ 0 0 0 0.01 1
execute if entity @e[type=minecraft:armor_stand,tag=full_altar1] at @e[type=minecraft:armor_stand,tag=full_altar1] run particle minecraft:reverse_portal ~ ~2 ~ 0.1 0.1 0.1 0.1 5

execute as @e[tag=!creating_altar_started,tag=creating_altar,nbt={Item:{id:"minecraft:ender_eye"},OnGround:1b}] at @e[tag=creating_altar] run data merge entity @s {Motion:[0.0,0.5,0.0],Item:{tag:{tag:""}}}
execute if entity @e[tag=creating_altar,tag=!creating_altar_started] run scoreboard players add time3 Timer 1
execute if score time3 Timer matches 16.. at @e[tag=creating_altar,nbt={Item:{id:"minecraft:ender_eye"}}] align xz run summon item ~0.5 ~ ~0.5 {Item:{id:"minecraft:ender_eye",Count:1b,tag:{Enchantments:[{id:""}]}},NoGravity:1b,Tags:["creating_altar_started"],PickupDelay:-2000000000}
execute at @e[type=item,tag=creating_altar_started] run kill @e[type=item,tag=creating_altar,distance=..2]
execute if score time3 Timer matches 16.. run scoreboard players reset time3 Timer

execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run particle campfire_cosy_smoke ~ ~-0.5 ~ 0 0 0 0.7 50 force
execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run summon lightning_bolt ~ ~-1 ~
execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run scoreboard players reset time Timer
execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run scoreboard players reset time2 Timer
execute at @e[tag=creating_altar_end,nbt={OnGround:1b}] if block ~ ~-1 ~ dragon_egg run scoreboard players reset time3 Timer


