# rift's parts generating
execute as @e[tag=rift] at @s unless entity @e[tag=rift.left,distance=..2.5] if predicate 0.01_chance run summon area_effect_cloud ~ ~ ~ {Duration: 2400, Tags: [rift.left, moving.rift, long.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.right,distance=..2.5] if predicate 0.01_chance run summon area_effect_cloud ~ ~ ~ {Duration: 2400, Tags: [rift.right, moving.rift, long.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.forward,distance=..2.5] if predicate 0.01_chance run summon area_effect_cloud ~ ~ ~ {Duration: 2400, Tags: [rift.forward, moving.rift, long.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.backward,distance=..2.5] if predicate 0.01_chance run summon area_effect_cloud ~ ~ ~ {Duration: 2400, Tags: [rift.backward, moving.rift, long.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.up,distance=..2.5] if predicate 0.2_chance run summon area_effect_cloud ~ ~ ~ {Duration: 2400, Tags: [rift.up, moving.rift, long.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.down,distance=..2.5] if predicate 0.2_chance run summon area_effect_cloud ~ ~ ~ {Duration: 2400, Tags: [rift.down, moving.rift, long.rift]}


execute as @e[tag=rift] at @s unless entity @e[tag=rift.left,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 100, Tags: [rift.left, moving.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.right,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 100, Tags: [rift.right, moving.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.forward,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 100, Tags: [rift.forward, moving.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.backward,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 100, Tags: [rift.backward, moving.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.up,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 100, Tags: [rift.up, moving.rift]}
execute as @e[tag=rift] at @s unless entity @e[tag=rift.down,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 100, Tags: [rift.down, moving.rift]}


execute as @e[tag=rift] at @s unless entity @e[tag=rift.opened,distance=..2.5] run summon area_effect_cloud ~ ~ ~ {Duration: 2099999999, Tags: [rift.opened]}


execute as @e[tag=moving.rift] at @s if entity @a[distance=..110] run particle dust_color_transition 0 0 0 5 0.204 0 0.286 ~ ~ ~ 0.1 0.1 0.1 0.001 1 force
execute as @e[tag=moving.rift] at @s if entity @a[distance=..110] run particle dust_color_transition 0 0 0 5 0.204 0 0.286 ~ ~ ~ 0.1 0.1 0.1 0.001 4 normal
execute as @e[tag=long.rift] at @s run particle glow ~ ~ ~ 0.1 0.1 0.1 0.001 1 force
execute as @e[tag=long.rift] at @s run particle glow ~ ~ ~ 0.1 0.1 0.1 0.001 4 normal

# 1
execute as @e[tag=rift.left] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~
execute as @e[tag=rift.left] at @s if predicate 0.2_chance run tp ~-0.3 ~0.3 ~
execute as @e[tag=rift.left] at @s if predicate 0.2_chance run tp ~-0.3 ~-0.3 ~
execute as @e[tag=rift.left] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~0.3
execute as @e[tag=rift.left] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~-0.3

execute as @e[tag=rift.right] at @s if predicate 0.2_chance run tp ~0.3 ~ ~
execute as @e[tag=rift.right] at @s if predicate 0.2_chance run tp ~0.3 ~0.3 ~
execute as @e[tag=rift.right] at @s if predicate 0.2_chance run tp ~0.3 ~-0.3 ~
execute as @e[tag=rift.right] at @s if predicate 0.2_chance run tp ~0.3 ~ ~0.3
execute as @e[tag=rift.right] at @s if predicate 0.2_chance run tp ~0.3 ~ ~-0.3

execute as @e[tag=rift.forward] at @s if predicate 0.2_chance run tp ~ ~ ~0.3
execute as @e[tag=rift.forward] at @s if predicate 0.2_chance run tp ~ ~0.3 ~0.3
execute as @e[tag=rift.forward] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~0.3
execute as @e[tag=rift.forward] at @s if predicate 0.2_chance run tp ~0.3 ~ ~0.3
execute as @e[tag=rift.forward] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~0.3

execute as @e[tag=rift.backward] at @s if predicate 0.2_chance run tp ~ ~ ~-0.3
execute as @e[tag=rift.backward] at @s if predicate 0.2_chance run tp ~ ~0.3 ~-0.3
execute as @e[tag=rift.backward] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~-0.3
execute as @e[tag=rift.backward] at @s if predicate 0.2_chance run tp ~0.3 ~ ~-0.3
execute as @e[tag=rift.backward] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~-0.3

execute as @e[tag=rift.up] at @s if predicate 0.2_chance run tp ~ ~0.3 ~
execute as @e[tag=rift.up] at @s if predicate 0.2_chance run tp ~0.3 ~0.3 ~
execute as @e[tag=rift.up] at @s if predicate 0.2_chance run tp ~-0.3 ~0.3 ~
execute as @e[tag=rift.up] at @s if predicate 0.2_chance run tp ~ ~0.3 ~0.3
execute as @e[tag=rift.up] at @s if predicate 0.2_chance run tp ~ ~0.3 ~-0.3

execute as @e[tag=rift.down] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~
execute as @e[tag=rift.down] at @s if predicate 0.2_chance run tp ~0.3 ~-0.3 ~
execute as @e[tag=rift.down] at @s if predicate 0.2_chance run tp ~-0.3 ~-0.3 ~
execute as @e[tag=rift.down] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~0.3
execute as @e[tag=rift.down] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~-0.3
# 2
execute as @e[tag=rift.left,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~
execute as @e[tag=rift.left,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~0.3 ~
execute as @e[tag=rift.left,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~-0.3 ~
execute as @e[tag=rift.left,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~0.3
execute as @e[tag=rift.left,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~-0.3

execute as @e[tag=rift.right,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~ ~
execute as @e[tag=rift.right,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~0.3 ~
execute as @e[tag=rift.right,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~-0.3 ~
execute as @e[tag=rift.right,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~ ~0.3
execute as @e[tag=rift.right,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~ ~-0.3

execute as @e[tag=rift.forward,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~ ~0.3
execute as @e[tag=rift.forward,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~0.3 ~0.3
execute as @e[tag=rift.forward,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~0.3
execute as @e[tag=rift.forward,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~ ~0.3
execute as @e[tag=rift.forward,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~0.3

execute as @e[tag=rift.backward,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~ ~-0.3
execute as @e[tag=rift.backward,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~0.3 ~-0.3
execute as @e[tag=rift.backward,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~-0.3
execute as @e[tag=rift.backward,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~ ~-0.3
execute as @e[tag=rift.backward,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~ ~-0.3

execute as @e[tag=rift.up,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~0.3 ~
execute as @e[tag=rift.up,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~0.3 ~
execute as @e[tag=rift.up,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~0.3 ~
execute as @e[tag=rift.up,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~0.3 ~0.3
execute as @e[tag=rift.up,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~0.3 ~-0.3

execute as @e[tag=rift.down,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~
execute as @e[tag=rift.down,tag=long.rift] at @s if predicate 0.2_chance run tp ~0.3 ~-0.3 ~
execute as @e[tag=rift.down,tag=long.rift] at @s if predicate 0.2_chance run tp ~-0.3 ~-0.3 ~
execute as @e[tag=rift.down,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~0.3
execute as @e[tag=rift.down,tag=long.rift] at @s if predicate 0.2_chance run tp ~ ~-0.3 ~-0.3



# Other
execute as @e[tag=moving.rift,tag=!long.rift] if predicate 0.01_chance run tag @s add rift.up
execute as @e[tag=moving.rift,tag=!long.rift] if predicate 0.01_chance run tag @s add rift.down
execute as @e[tag=moving.rift,tag=!long.rift] if predicate 0.01_chance run tag @s add rift.forward
execute as @e[tag=moving.rift,tag=!long.rift] if predicate 0.01_chance run tag @s add rift.backward

execute as @e[tag=moving.rift,tag=!long.rift] at @s if entity @e[tag=rift.opened,distance=30..40] run kill @s
execute as @e[tag=moving.rift,tag=long.rift] at @s unless block ~ ~ ~ air run kill @s 
execute as @e[tag=moving.rift,tag=long.rift] at @s if entity @a[distance=50..] run kill @s




