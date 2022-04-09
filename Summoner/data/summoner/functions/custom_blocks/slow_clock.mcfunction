tag @e[tag=Wire,scores={E=1..}] add WirePowered
execute as @e[tag=WirePowered] at @s run particle minecraft:dust 0.2 1 0.2 0.8 ~ ~ ~ 0 0.1 0 10 10
execute as @e[tag=WirePowered] at @s run scoreboard players set @s WireCount 0
execute as @e[tag=WirePowered] at @s at @e[tag=Wire,distance=0.5..1.01] run scoreboard players add @s WireCount 1
execute as @e[tag=WirePowered] at @s unless entity @e[tag=Wire,distance=0.5..1.01,tag=!WireSource] if score @s WireCount matches 1 run particle minecraft:dust 0.2 1 0.6 1.6 ~ ~ ~ 0 0.2 0 10 10
execute as @e[tag=WirePowered] at @s unless entity @e[tag=Wire,distance=0.5..1.01,tag=!WireSource] run tag @e[tag=WireSource,distance=0.5..1.01] remove WireSource
execute as @e[tag=WirePowered] at @s unless entity @e[tag=Wire,distance=0.5..1.01,tag=!WireSource] run scoreboard players reset @s WireCount
execute as @e[tag=WirePowered] at @s unless entity @e[tag=Wire,distance=0.5..1.01,tag=!WireSource] run tag @s remove WirePowered
execute as @e[tag=WirePowered] at @s as @e[tag=Wire,distance=0.5..1.01,limit=1,sort=random,tag=!WireSource] run scoreboard players add @s E 1
execute as @e[tag=WirePowered] at @s run scoreboard players remove @s E 1
execute as @e[tag=WirePowered] at @s if entity @s[scores={E=..0}] run scoreboard players reset @s E
execute as @e[tag=WirePowered] at @s run tag @e[tag=WireSource] remove WireSource
execute as @e[tag=WirePowered] at @s run tag @s add WireSource
execute as @e[tag=WirePowered] at @s run tag @s remove WirePowered
