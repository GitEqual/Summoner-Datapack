execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{run_c_craft:1}}]}] if score @s mana matches 3.. run scoreboard players remove @s[gamemode=!creative] mana 4
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{run_c_craft:1}}]}] at @s run particle flame ~ ~1 ~ 0.5 0.7 0.5 0.2 100 force
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{run_c_craft:1}}}] if score @s mana matches 3.. run scoreboard players remove @s[gamemode=!creative] mana 4
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{run_c_craft:1}}}] at @s run particle flame ~ ~1 ~ 0.5 0.7 0.5 0.2 100 force

execute as @a[scores={RC_raycast=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wrench:1}}]}] run tag @s add select
execute as @a[scores={RC_raycast=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{wrench:1}}}] run tag @s add select


execute as @e[tag=shot] at @s run playsound item.trident.return master @a ~ ~ ~ 20 1
execute as @e[tag=shot] at @s run kill @s

# Give tag to the entity where command was ran
tag @s add raycaster

# Reset score
scoreboard players set @s Distance 0

# Run function raycast_loop
execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.5 run function summoner:raycast/raycast_loop

# Remove tag after ending raycast
tag @s remove raycaster




