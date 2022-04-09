# Lens S
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glass_pane",Count:1b}}] run tag @s add craft_c2
execute as @e[type=minecraft:armor_stand,tag=craft_c2] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c2] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c2
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c2done

# Prism S
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glass",Count:1b}},nbt=!{Item:{tag:{Tags:[strglass]}}}] unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:blaze_powder"}}] run tag @s add craft_c3
execute as @e[type=minecraft:armor_stand,tag=craft_c3] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c3] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c3
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c3done

# Magma Block S
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] run tag @s add craft_c1
execute as @e[type=minecraft:armor_stand,tag=craft_c1] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c1] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c1
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c1done

# Spectral Arrow(2)D
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] run tag @s add craft_c4
execute as @e[type=minecraft:armor_stand,tag=craft_c4] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c4] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c4
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c4done

# Incandescent Glass D
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glass",Count:1b}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] run tag @s add craft_c5
execute as @e[type=minecraft:armor_stand,tag=craft_c5] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c5] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c5
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c5done

# Manifaction Cell T
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] run tag @s add craft_c6
execute as @e[type=minecraft:armor_stand,tag=craft_c6] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c6] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c6
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c6done

# Weak Crystall of Manifaction Cell T
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:redstone",Count:1b}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run tag @s add craft_c7
execute as @e[type=minecraft:armor_stand,tag=craft_c7] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c7] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c7
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c7done

# Absorbtrion Blend(3) D
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:amethyst_shard",Count:1b}}] run tag @s add craft_c8
execute as @e[type=minecraft:armor_stand,tag=craft_c8] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c8] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c8
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c8done

# Void Vessel(3) T
execute as @e[type=minecraft:armor_stand,tag=full_cauldron] at @s if entity @e[type=area_effect_cloud,tag=run_c_craft,distance=..2] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{tag:{Tags:[bottle_of_void]}}}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:firework_star",Count:1b,tag:{Tags:[blend]}}}] if entity @e[type=minecraft:item,distance=..2,sort=nearest,limit=1,nbt={Item:{id:"minecraft:glass",Count:1b,tag:{Tags:[strglass]}}}] run tag @s add craft_c9
execute as @e[type=minecraft:armor_stand,tag=craft_c9] at @s run tag @e[type=item,distance=..0.5] add trash
execute as @e[type=minecraft:armor_stand,tag=craft_c9] run tag @s add craft_c
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c9
execute as @e[type=minecraft:armor_stand,tag=craft_cdone] run tag @s remove craft_c9done

# Smt else...
