# Raycast
execute as @a[scores={RC_raycast=1..,mana=3..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{run_c_craft:1}}]}] at @s run function summoner:raycast/raycast
execute as @a[scores={RC_raycast=1..,mana=3..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{run_c_craft:1}}}] at @s run function summoner:raycast/raycast

execute as @a[scores={RC_raycast=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wrench:1}}]}] at @s run function summoner:raycast/raycast
execute as @a[scores={RC_raycast=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{wrench:1}}}] at @s run function summoner:raycast/raycast


# Right Click
execute as @a[scores={RC_raycast=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:[{Mantras:["void_resist"]}]}}}] at @s run function summoner:manifaction_cell/activating
execute as @a[scores={RC_raycast=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Tags:[{Mantras:["void_resist"]}]}}]}] at @s run function summoner:manifaction_cell/activating


# Other
execute as @a[scores={RC_raycast=1..}] run scoreboard players reset @s RC_raycast