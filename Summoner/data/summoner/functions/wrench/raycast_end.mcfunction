tag @s remove select
tag @s add select.1

execute if entity @s[nbt={SelectedItem:{tag:{wrench:1}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:[export_test]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wrench:1}}]}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:[export_test]}
