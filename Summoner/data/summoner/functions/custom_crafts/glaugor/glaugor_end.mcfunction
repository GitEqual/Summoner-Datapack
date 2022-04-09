execute as @e[tag=glaugor_craft_start] if score @s Timer matches 5000.. run tag @s add end
execute at @e[tag=end] run summon item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1b},PickupDelay:-1,NoGravity:1b,Tags:[glaugorboom],Motion:[0.0,-0.05,0.0]}
execute as @e[tag=star] if entity @e[tag=end] at @s run playsound minecraft:block.glass.break master @a
execute as @e[tag=star] if entity @e[tag=end] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.5 30
execute as @e[tag=star] if entity @e[tag=end] run kill @s
execute as @e[tag=end] run kill @s

execute as @e[tag=glfail] at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 100
execute as @e[tag=glfail] at @s run particle dust 0 1 0.667 3 ~ ~0.3 ~ 0.1 0.1 0.1 0 10
execute as @e[tag=star] if entity @e[tag=glfail] run data merge entity @s {PickupDelay:30s}
execute as @e[tag=star] if entity @e[tag=glfail] run tag @s remove star
execute as @e[tag=cream_help] run kill @s

execute as @e[tag=glfail] run kill @s





