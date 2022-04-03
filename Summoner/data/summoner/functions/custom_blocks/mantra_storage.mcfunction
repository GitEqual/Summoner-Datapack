execute as @e[nbt={Item:{tag:{Tags:["blend"]}}}] at @s if block ~ ~ ~ chest align xyz positioned ~0.5 ~ ~0.5 run summon bat ~ ~ ~ {Tags:["mantra_storage"]}
execute as @e[nbt={Item:{tag:{Tags:["blend"]}}}] at @s if block ~ ~ ~ chest run kill @s
execute as @e[tag=mantra_storage] run effect give @s invisibility 1000000 0 true
execute as @e[tag=mantra_storage] at @s run setblock ~ ~ ~ barrel[facing=up]
execute as @e[tag=mantra_storage] at @s run summon armor_stand ~ ~ ~ {Tags:[MScopy],Small:1b,NoGravity:1b}
execute as @e[tag=MScopy] at @s run item replace entity @s armor.chest from block ~ ~ ~ container.4
execute as @e[tag=MScopy] at @s run item replace entity @s weapon.mainhand from block ~ ~ ~ container.12
execute as @e[tag=MScopy] at @s run item replace entity @s weapon.offhand from block ~ ~ ~ container.14
execute as @e[tag=MScopy] at @s run item replace entity @s armor.legs from block ~ ~ ~ container.21
execute as @e[tag=mantra_storage] run tp @s 0 -1000 0
execute as @e[tag=mantra_storage] run kill @s
execute as @e[tag=MScopy] at @s unless block ~ ~ ~ barrel run summon minecraft:item ~ ~ ~ {Item:{id:"glow_squid_spawn_egg",Count:1b,tag:{EntityTag:{id:"minecraft:bat",NoAI:1b,PersistenceRequired:1b,Silent:1,Invulnerable:1,Tags:["mantra_storage"]}}},Tags:["CustomBlock"],PickupDelay:30,Motion:[0.0,0.25,0.0]}
execute as @e[tag=MScopy] at @s unless block ~ ~ ~ barrel run kill @s
execute as @e[tag=CustomBlock] at @s run data modify entity @s Motion set from entity @e[nbt={Item:{id:"minecraft:barrel",Count:1b}},sort=nearest,limit=1] Motion
execute as @e[tag=CustomBlock] at @s run kill @e[nbt={Item:{id:"minecraft:barrel",Count:1b}},sort=nearest,limit=1]

