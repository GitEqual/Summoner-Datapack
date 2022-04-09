# SFX
execute as @e[tag=rift] run scoreboard players add @s Timer 1
execute as @e[tag=rift] at @s if score @s Timer matches 1000.. in the_end if entity @a[distance=..300] run playsound minecraft:summoner.hole_far_ost master @a ~ ~ ~ 100
execute as @e[tag=rift] at @s if score @s Timer matches 1000.. in the_end if entity @a[distance=..300] run playsound minecraft:summoner.hole_ost master @a ~ ~ ~ 10
execute as @e[tag=rift] if score @s Timer matches 1000.. run scoreboard players reset @s Timer

# Negative Effects
execute as @a[tag=!vr,tag=shrinking,gamemode=!creative] run effect give @s wither 1 1 false
execute as @a[tag=vr,gamemode=!creative] at @s if entity @e[tag=moving.rift,distance=..1] if score @s mana matches ..0 run tag @s remove vr

execute as @a[tag=vr] at @s if entity @e[tag=moving.rift,distance=..10] run particle glow ~ ~ ~ 1 1 1 0.1 2 force 
execute as @a[tag=vr,gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=moving.rift,distance=..3] run scoreboard players remove @s mana 2
execute as @a[tag=vr] at @s if entity @e[tag=moving.rift,distance=..3] run particle end_rod ~ ~ ~ 0.5 1 0.5 0.2 4 
execute as @a[tag=!vr,gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=moving.rift,distance=..1] run tag @s add shrinking
execute as @a[tag=!vr,gamemode=!creative,gamemode=!spectator] at @s if entity @e[tag=moving.rift,distance=..1] run kill @e[tag=moving.rift,tag=!long.rift,distance=..1,sort=nearest,limit=1]
execute as @a[tag=!vr,tag=shrinking,gamemode=!creative,gamemode=!spectator] at @s run particle dust_color_transition 0 0 0 5 0.204 0 0.286 ~ ~ ~ 0.4 1 0.4 0.001 4 normal
execute as @a[tag=!vr,tag=shrinking,gamemode=!creative,gamemode=!spectator] at @s run particle dust_color_transition 0 0 0 5 0.204 0 0.286 ~ ~ ~ 0.4 1 0.4 0.001 1 force
execute as @a[tag=!vr,tag=shrinking,gamemode=!creative,gamemode=!spectator] run scoreboard players add @s Timer 1
execute as @a[tag=vr,tag=shrinking,gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s Timer
execute as @a[tag=vr,tag=shrinking,gamemode=!creative,gamemode=!spectator] run tag @s remove shrinking
execute as @a[tag=!vr,tag=shrinking,gamemode=!creative,gamemode=!spectator] if score @s Timer matches 200.. run tag @s add cure
execute as @a[tag=!vr,tag=cure,gamemode=!creative,gamemode=!spectator] if score @s Timer matches 200.. run tag @s remove shrinking
execute as @a[tag=!vr,tag=cure,gamemode=!creative,gamemode=!spectator] if score @s Timer matches 200.. run scoreboard players reset @s Timer
execute as @a[tag=!vr,tag=cure,gamemode=!creative,gamemode=!spectator] run tag @s remove cure

# Destroy
execute as @e[tag=moving.rift,tag=!long.rift] at @s run setblock ~ ~ ~ air destroy


