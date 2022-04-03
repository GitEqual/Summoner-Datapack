# Stonecutter
execute at @e[tag=gc1_cutting] run particle block glass ~-0.5 ~0.5 ~ 0.1 0.1 0.1 1 10 normal
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:1b,tag:{Tags:[strglass1]}},OnGround:1b}] unless entity @e[tag=gc1_start] if block ~ ~ ~ stonecutter align xz run summon armor_stand ~0.875 ~-0.3 ~0.575 {Invisible:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],DisabledSlots:65793,HandItems:[{id:"glass",Count:1b,tag:{Enchantments:[{}]}}],Pose:{RightArm:[30f,360f,0f]},Tags:[gc1_start]}
execute as @e[tag=gc1_start,tag=!ki1] at @s run kill @e[nbt={Item:{tag:{Tags:["strglass1"]}}},distance=..1]
execute as @e[tag=gc1_start] at @s unless entity @e[nbt={Item:{tag:{Tags:["strglass1"]}}},distance=..1] run tag @s add ki1
execute as @e[tag=gc1_cutting] run scoreboard players add @s Timer 1
execute as @e[tag=gc1_start] run data merge entity @s {Tags:[gc1_cutting]}
execute as @e[tag=gc1_cutting] if score @s Timer matches 100.. run data merge entity @s {Tags:[gc1_end]}
execute as @e[tag=gc1_end] at @s run summon item ~-0.4 ~0.5 ~-0.1 {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1001,display:{Name:'[{"text":"Pure Prism","color":"red"}]',Lore:['[{"text":"Prism","color":"red","italic":true,"underlined":true},{"text":"","italic":false,"underlined":false},{"text":" can focus ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"mana light ","italic":false,"underlined":false,"color":"dark_blue"},{"text":"from ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"stars","italic":false,"underlined":false,"color":"#ffcc33"}]']},HideFlags:32,Tags:["pure_prism"],Enchantments:[{}]}},PickupDelay:40}
execute as @e[tag=gc1_end] run scoreboard players reset @s
execute as @e[tag=gc1_end] run kill @s

execute at @e[tag=gc2_cutting] run particle block glass ~-0.5 ~0.5 ~ 0.1 0.1 0.1 1 10 normal
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:1b,tag:{Tags:[strglass2]}},OnGround:1b}] unless entity @e[tag=gc2_start] if block ~ ~ ~ stonecutter align xz run summon armor_stand ~0.875 ~-0.3 ~0.575 {Invisible:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],DisabledSlots:65793,HandItems:[{id:"glass",Count:1b,tag:{Enchantments:[{}]}}],Pose:{RightArm:[30f,360f,0f]},Tags:[gc2_start]}
execute as @e[tag=gc2_start,tag=!ki2] at @s run kill @e[nbt={Item:{tag:{Tags:["strglass2"]}}},distance=..1]
execute as @e[tag=gc2_start] at @s unless entity @e[nbt={Item:{tag:{Tags:["strglass2"]}}},distance=..1] run tag @s add ki2
execute as @e[tag=gc2_cutting] run scoreboard players add @s Timer 1
execute as @e[tag=gc2_start] run data merge entity @s {Tags:[gc2_cutting]}
execute as @e[tag=gc2_cutting] if score @s Timer matches 100.. run data merge entity @s {Tags:[gc2_end]}
execute as @e[tag=gc2_end] at @s run summon item ~-0.4 ~0.5 ~-0.1 {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1002,display:{Name:'[{"text":"Awesome Prism","color":"gold"}]',Lore:['[{"text":"Prism","color":"gold","italic":true,"underlined":true},{"text":"","italic":false,"underlined":false},{"text":" can focus ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"mana light ","italic":false,"underlined":false,"color":"dark_blue"},{"text":"from ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"stars","italic":false,"underlined":false,"color":"#ffcc33"}]']},HideFlags:32,Tags:["awesome_prism"],Enchantments:[{}]}},PickupDelay:40}
execute as @e[tag=gc2_end] run scoreboard players reset @s
execute as @e[tag=gc2_end] run kill @s

execute at @e[tag=gc3_cutting] run particle block glass ~-0.5 ~0.5 ~ 0.1 0.1 0.1 1 10 normal
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:1b,tag:{Tags:[strglass3]}},OnGround:1b}] unless entity @e[tag=gc3_start] if block ~ ~ ~ stonecutter align xz run summon armor_stand ~0.875 ~-0.3 ~0.575 {Invisible:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],DisabledSlots:65793,HandItems:[{id:"glass",Count:1b,tag:{Enchantments:[{}]}}],Pose:{RightArm:[30f,360f,0f]},Tags:[gc3_start]}
execute as @e[tag=gc3_start,tag=!ki3] at @s run kill @e[nbt={Item:{tag:{Tags:["strglass3"]}}},distance=..1]
execute as @e[tag=gc3_start] at @s unless entity @e[nbt={Item:{tag:{Tags:["strglass3"]}}},distance=..1] run tag @s add ki2
execute as @e[tag=gc3_cutting] run scoreboard players add @s Timer 1
execute as @e[tag=gc3_start] run data merge entity @s {Tags:[gc3_cutting]}
execute as @e[tag=gc3_cutting] if score @s Timer matches 100.. run data merge entity @s {Tags:[gc3_end]}
execute as @e[tag=gc3_end] at @s run summon item ~-0.4 ~0.5 ~-0.1 {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1003,display:{Name:'[{"text":"Prism","color":"yellow"}]',Lore:['[{"text":"Prism","color":"yellow","italic":true,"underlined":true},{"text":"","italic":false,"underlined":false},{"text":" can focus ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"mana light ","italic":false,"underlined":false,"color":"dark_blue"},{"text":"from ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"stars","italic":false,"underlined":false,"color":"#ffcc33"}]']},HideFlags:32,Tags:["prism"],Enchantments:[{}]}},PickupDelay:40}
execute as @e[tag=gc3_end] run scoreboard players reset @s
execute as @e[tag=gc3_end] run kill @s

execute at @e[tag=gc4_cutting] run particle block glass ~-0.5 ~0.5 ~ 0.1 0.1 0.1 1 10 normal
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:glass",Count:1b,tag:{Tags:[strglass4]}},OnGround:1b}] unless entity @e[tag=gc3_start] if block ~ ~ ~ stonecutter align xz run summon armor_stand ~0.875 ~-0.3 ~0.575 {Invisible:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],DisabledSlots:65793,HandItems:[{id:"glass",Count:1b,tag:{Enchantments:[{}]}}],Pose:{RightArm:[30f,360f,0f]},Tags:[gc4_start]}
execute as @e[tag=gc4_start,tag=!ki4] at @s run kill @e[nbt={Item:{tag:{Tags:["strglass4"]}}},distance=..1]
execute as @e[tag=gc4_start] at @s unless entity @e[nbt={Item:{tag:{Tags:["strglass4"]}}},distance=..1] run tag @s add ki4
execute as @e[tag=gc4_cutting] run scoreboard players add @s Timer 1
execute as @e[tag=gc4_start] run data merge entity @s {Tags:[gc4_cutting]}
execute as @e[tag=gc4_cutting] if score @s Timer matches 100.. run data merge entity @s {Tags:[gc4_end]}
execute as @e[tag=gc4_end] at @s run summon item ~-0.4 ~0.5 ~-0.1 {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1004,display:{Name:'[{"text":"Cloudy Prism","color":"gray"}]',Lore:['[{"text":"Prism","color":"gray","italic":true,"underlined":true},{"text":"","italic":false,"underlined":false},{"text":" can focus ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"mana light ","italic":false,"underlined":false,"color":"dark_blue"},{"text":"from ","italic":false,"underlined":false,"color":"dark_purple"},{"text":"stars","italic":false,"underlined":false,"color":"#ffcc33"}]']},HideFlags:32,Tags:["cloudy_prism"],Enchantments:[{}]}},PickupDelay:40}
execute as @e[tag=gc4_end] run scoreboard players reset @s
execute as @e[tag=gc4_end] run kill @s
