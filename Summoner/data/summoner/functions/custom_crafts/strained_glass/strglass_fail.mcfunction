tellraw @a[distance=..6] {"text":"!!!Attention, water is too warm near this cauldron!!!","italic":true,"color":"red","hoverEvent":{"action":"show_text","contents":"Try to place water a bit further."}}
tag @e[type=item,distance=..0.1] add said
execute as @e[type=item,nbt={Tags:[said]}] at @s if block ~ ~ ~ water run particle minecraft:block minecraft:glass ~ ~ ~ 0.1 0.1 0.1 2 100 force
execute as @e[type=item,nbt={Tags:[said]}] at @s if block ~ ~ ~ water run playsound minecraft:block.glass.break master @a ~ ~ ~
execute as @e[type=item,nbt={Tags:[said]}] at @s if block ~ ~ ~ water run kill @s

