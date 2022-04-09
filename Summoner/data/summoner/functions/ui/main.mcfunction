execute as @a[tag=!wait] run scoreboard players add @s UItimer 1
execute as @a[tag=wait] run scoreboard players add @s Musictimer 1
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s UItimer matches 30.. run function summoner:ui/bar
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s UItimer matches 30.. run scoreboard players reset @s UItimer
execute as @a[tag=wait] if score @s Musictimer matches 40.. run function summoner:ui/restore