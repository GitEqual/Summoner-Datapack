# 1
execute if entity @s[nbt={SelectedItem:{tag:{lighting:1}}}] align xz run summon area_effect_cloud ~0.5 ~ ~0.5 {Duration:2,Tags:["end_c_craft"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{lighting:1}}]}] unless entity @e[tag=select_type,distance=..2] align xz run summon lightning_bolt ~0.5 ~ ~0.5 {Tags:["end_c_craft"]}

execute if entity @s[nbt={SelectedItem:{tag:{run_c_craft:1}}}] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:20000000,Tags:["run_c_craft"]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{run_c_craft:1}}]}] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:20000000,Tags:["run_c_craft"]}

execute if entity @s[nbt=!{SelectedItem:{Count:1b,id:"minecraft:bow"},Inventory:[{Slot:-106b,id:"minecraft:arrow"}]}] run tag @s remove shot.prepare

tag @s remove select
# Reset score RC_raycast
scoreboard players set @s RC_raycast 0