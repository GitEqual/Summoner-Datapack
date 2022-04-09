execute as @a if score @s tempdeath1 matches 1.. if data entity @s Inventory[{tag:{Tags:["---hotglass"]}}] run clear @s minecraft:gray_stained_glass{Tags:["hg"]}
execute as @a if score @s tempdeath1 matches 1.. if data entity @s Inventory[{tag:{Tags:["--hotglass"]}}] run clear @s minecraft:yellow_stained_glass{Tags:["hg"]}
execute as @a if score @s tempdeath1 matches 1.. if data entity @s Inventory[{tag:{Tags:["-hotglass"]}}] run clear @s minecraft:orange_stained_glass{Tags:["hg"]}
execute as @a if score @s tempdeath1 matches 1.. if data entity @s Inventory[{tag:{Tags:["hotglass"]}}] run clear @s minecraft:red_stained_glass{Tags:["hg"]}

scoreboard objectives add tempdeath1 deathCount
execute as @a at @s if score @s tempdeath1 matches 1.. unless data entity @s Inventory[{tag:{Tags:["hg"]}}] run particle minecraft:block minecraft:glass ~ ~ ~ 0.5 1 0.5 1 1000 force
execute as @a at @s if score @s tempdeath1 matches 1.. unless data entity @s Inventory[{tag:{Tags:["hg"]}}] run playsound minecraft:block.glass.break master @s ~ ~ ~
execute as @a if score @s tempdeath1 matches 1.. unless data entity @s Inventory[{tag:{Tags:["hg"]}}] run scoreboard objectives remove tempdeath1


