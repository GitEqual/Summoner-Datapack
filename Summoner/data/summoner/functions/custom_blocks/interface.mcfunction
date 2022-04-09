execute at @e[tag=interface] unless block ~ ~ ~ barrel run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1,tag:{EntityTag:{Invisible:1b,Tags:["interface_create"]}}}}
execute at @e[tag=interface_create] run setblock ~ ~ ~ barrel
execute as @e[tag=interface] at @s unless block ~ ~ ~ barrel if entity @e[type=item,distance=..0.5,limit=1] run kill @s
execute at @e[tag=interface_create] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Tags:[interface]}
execute at @e[tag=interface] run kill @e[tag=interface_create,distance=..1,limit=1]



