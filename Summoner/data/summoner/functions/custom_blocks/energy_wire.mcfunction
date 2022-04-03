scoreboard objectives add WireCount dummy

execute at @e[tag=energy_wire_create] align xyz run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [Wire,New,WireConnector],Invisible:1,Marker:1,NoGravity:1}
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] positioned ~1 ~ ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] positioned ~-1 ~ ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] positioned ~ ~1 ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] positioned ~ ~-1 ~ as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] positioned ~ ~ ~-1 as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] positioned ~ ~ ~1 as @e[tag=Wire,distance=..0.8] at @s run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] run function summoner:custom_blocks/wire.dir_check
execute as @e[tag=New,tag=Wire] at @s if entity @e[type=player,distance=..3] run tag @s remove tpNew
execute as @e[tag=energy_wire_create] at @s if entity @e[tag=New,distance=..0.8] run kill @s

execute at @e[tag=Wire] unless block ~ ~-0.5 ~ #wire_types positioned ~ ~ ~ run kill @e[tag=Wire,distance=..0.8,limit=1,sort=nearest]
execute at @e[tag=Wire] unless block ~ ~-0.5 ~ #wire_types run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1,tag:{EntityTag:{Invisible:1b,Tags:["energy_wire_create"]}}}}