execute as @s run tag @a add wait
execute as @s at @s run title @a[distance=..64,tag=wait] actionbar {"text":"Now Playing: Lifeformed - Frozen Hot Sauce","color":"green"}
execute as @s at @s run stopsound @a[distance=..64] record minecraft:music_disc.11
execute as @s at @s run playsound minecraft:summoner.lifeformedfrozenhotsauce record @a[distance=..64] ~ ~ ~ 4