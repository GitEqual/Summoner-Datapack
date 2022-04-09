function summoner:custom_crafts/glaugor/glaugor

execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] run scoreboard players add @s Timer 1
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s if entity @a[distance=..10] run scoreboard players add @s Timer 1
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s if entity @a[distance=..5] run scoreboard players add @s Timer 1
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s if entity @a[distance=..5] run effect give @a[distance=..5] blindness 2 1 true
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s if entity @a[distance=..5] run effect give @a[distance=..5] slowness 2 1 true
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] if score @s Timer matches 40.. at @s run effect give @a[distance=..20] blindness 1 0 true
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] if score @s Timer matches 40.. at @s run playsound minecraft:block.wood.place master @a[distance=..20] ~ ~ ~ 100 0
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] if score @s Timer matches 40.. at @s run particle flash ~ ~ ~ 0 0 0 1 1 force
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] if score @s Timer matches 40.. run scoreboard players reset @s Timer
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] run data merge entity @s {NoGravity:1b}

execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}},tag=!noPickupDelay] at @s unless entity @a[tag=!glaugor_curse,distance=..1] run data merge entity @s {PickupDelay:20s} 
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s if entity @a[tag=!glaugor_curse,distance=..6] run particle witch ~ ~0.3 ~ 0.1 0.1 0.1 0.1 1
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s if entity @a[tag=glaugor_curse,distance=..1] run tag @s add noPickupDelay
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s run playsound minecraft:block.beacon.power_select master @a[distance=..1,tag=!glaugor_curse] ~ ~ ~ 100 0
execute as @e[nbt={Item:{tag:{Tags:[glaugor]}}}] at @s run tag @a[distance=..1,tag=!glaugor_curse] add glaugor_curse



execute if entity @a[tag=glaugor_curse] run scoreboard objectives add curse_timer dummy
execute if entity @a[tag=glaugor_curse] run scoreboard players add @a[tag=glaugor_curse] curse_timer 1
execute as @a[tag=glaugor_curse] if score @s curse_timer matches 40.. if predicate 0.01_chance run effect give @s blindness 5 0 true
execute as @a[tag=glaugor_curse] if score @s curse_timer matches 40.. if predicate 0.01_chance run effect give @s hunger 5 0 true
execute as @a[tag=glaugor_curse] if score @s curse_timer matches 40.. if predicate 0.01_chance run effect give @s nausea 10 0 true
execute as @a[tag=glaugor_curse] if score @s curse_timer matches 40.. if predicate 0.01_chance run effect give @s slowness 5 1 true
execute as @a[tag=glaugor_curse] if score @s curse_timer matches 40.. if predicate 0.01_chance run effect give @s weakness 5 1 true
execute as @a[tag=glaugor_curse] if score @s curse_timer matches 41.. run scoreboard players reset @s curse_timer
execute unless entity @a[tag=glaugor_curse] run scoreboard objectives remove curse_timer