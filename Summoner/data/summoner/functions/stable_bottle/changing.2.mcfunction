data modify block 0 0 0 Items set value [{Slot:0b,Count:1b,id:"poisonous_potato"}]
data modify block 0 0 0 Items[0].id set from entity @s Inventory[{Slot:-106b}].id
data modify block 0 0 0 Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag
data modify block 0 0 0 Items[0].Count set from entity @s Inventory[{Slot:-106b}].Count
data modify block 0 0 0 Items[0].id set value "minecraft:firework_star"
item replace entity @s weapon.offhand from block 0 0 0 container.0