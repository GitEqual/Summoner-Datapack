execute if score @s tempAct1 matches 0 run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 100
execute if score @s tempAct1 matches 1 run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 100 2

playsound minecraft:ui.button.click master @s ~ ~ ~
execute if score @s tempAct1 matches 0 run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force
execute if score @s tempAct1 matches 1 run particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 50 force

scoreboard objectives add tempAct1 dummy "Activating"
scoreboard players add @s tempAct1 1
execute if score @s tempAct1 matches 2.. run scoreboard players set @s tempAct1 0

# Void Resist
execute if score @s[tag=vr] tempAct1 matches 0.. run tag @s remove vr
execute if score @s[tag=!vr] tempAct1 matches 1.. run tag @s add vr

