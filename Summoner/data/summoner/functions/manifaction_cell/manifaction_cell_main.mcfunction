execute as @a[tag=!cell_sealed.1,tag=!cell_sealed.2,tag=!cell_sealed.3] if entity @s[nbt={SelectedItem:{Count:1b,id:"minecraft:firework_star",tag:{Tags:[{CellLevel:1b},{Empty:1b}]}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone",Count:1b}]}] run tag @s add cell_seal
execute as @a if entity @s[tag=cell_seal,nbt={SelectedItem:{id:"minecraft:redstone",Count:1b}}] if entity @s[tag=cell_seal,nbt={Inventory:[{Slot:-106b,id:"minecraft:firework_star",tag:{Tags:[{CellLevel:1b},{Empty:1b}]}}]}] run tag @s add cell_seal_done
execute as @a if entity @s[nbt=!{SelectedItem:{Count:1b,id:"minecraft:firework_star",tag:{Tags:[{CellLevel:1b},{Empty:1b}]}}},tag=cell_seal] if entity @s[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:redstone",Count:1b}]},tag=cell_seal] run tag @s remove cell_seal


execute if entity @a[tag=cell_seal_done] in overworld run forceload add 0 0
execute if entity @a[tag=cell_seal_done] in overworld unless block 0 0 0 yellow_shulker_box run setblock 0 0 0 yellow_shulker_box

execute if entity @a[tag=cell_seal_done] in overworld run data modify block 0 0 0 Items set value [{Slot:0b,Count:1b,id:"poisonous_potato"}]
execute if entity @a[tag=cell_seal_done] in overworld run data modify block 0 0 0 Items[0].id set from entity @p[tag=cell_seal_done] SelectedItem.id
execute if entity @a[tag=cell_seal_done] in overworld run data modify block 0 0 0 Items[0].tag set from entity @p[tag=cell_seal_done] SelectedItem.tag

execute as @a[tag=cell_seal_done,tag=!cell_sealed.3] run tag @s add cell_sealed.1
execute as @a[tag=cell_sealed.1] run tag @s remove cell_seal_done

execute if entity @a[tag=cell_sealed.1] in overworld run data modify block 0 0 0 Items append value {Slot:1b,Count:1b,id:"poisonous_potato"}

execute if entity @a[tag=cell_sealed.1] in overworld run data modify block 0 0 0 Items[1].id set from entity @p[tag=cell_sealed.1] Inventory[-1].id
execute if entity @a[tag=cell_sealed.1] in overworld run data modify block 0 0 0 Items[1].tag set from entity @p[tag=cell_sealed.1] Inventory[-1].tag
execute if entity @a[tag=cell_sealed.1] in overworld run data modify block 0 0 0 Items[0].tag append from block 0 0 0 Items[1].tag


execute as @a[tag=cell_sealed.1] run tag @s add cell_sealed.2
execute as @a[tag=cell_sealed.2] run tag @s remove cell_sealed.1
execute as @a[tag=cell_sealed.2] run item replace entity @s weapon.offhand with air


execute if entity @a[tag=cell_sealed.2] in overworld run data modify block 0 0 0 Items[0].tag.Tags prepend from block 0 0 0 Items[1].tag.Tags[0]
execute if entity @a[tag=cell_sealed.2] in overworld run data modify block 0 0 0 Items append value {Slot:2b,Count:1b,id:"carrot_on_a_stick"}
execute if entity @a[tag=cell_sealed.2] in overworld run data modify block 0 0 0 Items[0].id set from block 0 0 0 Items[2].id

execute as @a[tag=cell_sealed.2,tag=!cell_sealed.3] run function summoner:manifaction_cell/manifaction_cell_functional


#execute as @a[tag=cell_sealed.2] run tag @s add cell_sealed.3
execute as @a[tag=cell_sealed.2] run tag @s remove cell_sealed.2






# TESTS
function summoner:manifaction_cell/mc_tests
