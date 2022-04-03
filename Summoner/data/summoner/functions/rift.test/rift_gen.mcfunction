execute if score rift.amount rift matches 5.. run scoreboard players add rift.amount rift 1

execute unless score rift.amount rift matches 5.. in the_end run summon armor_stand 0 0 0 {Tags:[rift_gen],NoGravity:1b}

execute as @e[tag=rift_gen,limit=1] store result entity @s Rotation[0] float 1 run data get entity @s UUID[1] 0.0001

execute as @e[tag=rift_gen,limit=1] at @s unless score rift.amount rift matches 5.. run summon marker ^ ^70 ^200 {Tags:[rift]}

kill @e[tag=rift_gen]
