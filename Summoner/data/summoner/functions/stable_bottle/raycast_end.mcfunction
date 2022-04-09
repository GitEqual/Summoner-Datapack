execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] run give @s firework_star{CustomModelData:1009,Enchantments:[{}]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",Count:1b}]}] run give @s firework_star{CustomModelData:1009,Enchantments:[{}]}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:[rift.kill]}
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",Count:1b}]}] align xyz run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:[rift.kill]}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:bow",Count:1b}}] run playsound item.trident.thunder master @a ~ ~ ~ 5 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bow",Count:1b}]}] run playsound item.trident.thunder master @a ~ ~ ~ 5 1

execute as @e[tag=long.rift] at @s if entity @e[tag=rift.kill,distance=..2] run kill @s