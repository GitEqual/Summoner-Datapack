scoreboard objectives add tempTimer2 dummy
scoreboard objectives add tempMotion1 dummy

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] run scoreboard players add @s tempTimer2 1
execute as @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run scoreboard players add @s tempTimer2 1


execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] at @s store result score @s tempPos1 run data get entity @s Pos[1]
execute as @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] at @s store result score @s tempPos1 run data get entity @s Pos[1]

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] at @s in the_end store result score @s tempMotion1 run data get entity @s Motion[0]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] at @s in the_end store result score @s tempMotion1 run data get entity @s Motion[1]
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] at @s in the_end store result score @s tempMotion1 run data get entity @s Motion[2]
execute as @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] at @s in the_end store result score @s tempMotion1 run data get entity @s Motion[0]
execute as @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] at @s in the_end store result score @s tempMotion1 run data get entity @s Motion[1]
execute as @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] at @s in the_end store result score @s tempMotion1 run data get entity @s Motion[2]

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:glass_bottle"}]}] at @s if score @s tempPos1 matches ..0 run function summoner:stable_bottle/motion_test
execute as @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] at @s if score @s tempPos1 matches ..0 run function summoner:stable_bottle/motion_test

execute as @a[tag=give.bottle] run clear @s glass_bottle 1
execute as @a[tag=give.bottle] run give @s firework_star{CustomModelData:1007,tag:{Tags:[bottle_of_void]}}

execute as @a[tag=give.bottle] run scoreboard players reset @s tempTimer2

execute as @a[tag=give.bottle] run tag @s remove give.bottle

execute as @e[nbt={Item:{tag:{tag:{Tags:[bottle_of_void]}}}}] at @s run particle ash ~ ~0.5 ~ 0 0 0 0.1 2