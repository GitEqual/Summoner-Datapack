function summoner:stable_bottle/bottle_of_void

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_star",tag:{Tags:[void_vessel]}}],SelectedItem:{Count:1b,id:"minecraft:bow"}}] in overworld run function summoner:stable_bottle/changing
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:arrow",tag:{Tags:[void_vessel]}}]},nbt=!{SelectedItem:{Count:1b,id:"minecraft:bow"}}] in overworld run function summoner:stable_bottle/changing.2

execute as @a if entity @s[nbt={SelectedItem:{Count:1b,id:"minecraft:bow"},Inventory:[{Slot:-106b,id:"minecraft:arrow",tag:{Tags:[void_vessel]}}]}] run tag @s add shot.prepare
execute as @a if entity @s[nbt=!{SelectedItem:{Count:1b,id:"minecraft:bow"},Inventory:[{Slot:-106b,id:"minecraft:arrow",tag:{Tags:[void_vessel]}}]}] run tag @s remove shot.prepare
execute as @e[type=arrow,nbt={crit:1b}] at @s if entity @a[tag=shot.prepare,distance=..2,sort=nearest,limit=1] run tag @s add shot
execute as @e[type=arrow,nbt={crit:0b}] at @s if entity @a[tag=shot.prepare,distance=..2,sort=nearest,limit=1] run tag @s add shot.fail.1
execute as @e[tag=shot.fail.1,nbt={inGround:1b}] run tag @s add shot.fail.2
execute as @e[tag=shot.fail.2] at @s run playsound block.glass.break master @a ~ ~ ~ 5 1
execute as @e[tag=shot.fail.2] at @s run particle block glass ~ ~ ~ 0 0 0 0.1 5 force
execute as @e[tag=shot.fail.2] run kill @s
execute as @a[tag=shot.prepare] at @s if entity @e[tag=shot,distance=..2] anchored feet positioned ^ ^ ^0.75 run function summoner:raycast/raycast

