# Add 1 to the score Distance
scoreboard players add @s Distance 1
scoreboard players add @s[tag=select] Distance 7
# Visual particles
execute as @s[tag=!shot.prepare] run particle minecraft:dust 0.212 0.212 0.212 1 ~ ~ ~ 0 0 0 0 1 force
execute as @s[tag=shot.prepare] run particle end_rod ~ ~ ~ 0 0 0 0.2 2 force
execute as @s[tag=shot.prepare] run particle glow_squid_ink ~ ~ ~ 0 0 0 0 1 force
# Test if ray collides with block
execute unless block ~ ~ ~ minecraft:air as @s[scores={Distance=..100},tag=!select] positioned ^ ^ ^-0.5 run function summoner:raycast/raycast_end
# Test if ray collides with entity
execute positioned ~ ~-1 ~ if entity @e[distance=..1.5,tag=!raycaster,tag=!shot.prepare,tag=!select] positioned ~ ~1 ~ run function summoner:raycast/raycast_end
execute positioned ~ ~-1 ~ if entity @e[distance=..1.5,tag=!raycaster,tag=long.rift,tag=!shot.prepare,tag=!select] positioned ~ ~1 ~ run function summoner:stable_bottle/raycast_end
execute positioned ~ ~-1 ~ if entity @e[distance=..1,tag=!raycaster,tag=long.rift,tag=!shot.prepare,tag=!select,tag=export] positioned ~ ~1 ~ run function summoner:wrench/raycast_end
# Test if ray didn't collide with anything & distance limit ran 
execute as @s[scores={Distance=100}] positioned ^ ^ ^-0.5 run function summoner:raycast/raycast_end
# Loop function
execute if block ~ ~ ~ minecraft:air as @s[scores={Distance=..100}] positioned ~ ~-1 ~ unless entity @e[distance=..1,tag=!raycaster] positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function summoner:raycast/raycast_loop