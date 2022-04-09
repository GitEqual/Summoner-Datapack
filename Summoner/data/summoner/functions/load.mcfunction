#fill -1 0 -1 1 1 1 bedrock replace air
setblock 0 1 0 daylight_detector[inverted=true]
scoreboard objectives add Distance dummy
scoreboard objectives add RC_raycast minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Timer dummy
scoreboard objectives add mana dummy
scoreboard objectives add rift dummy
#execute in the_end run forceload add 0 0
tellraw @a {"text": "I'm worling"}
tag @a remove del
scoreboard objectives add usedDisc minecraft.used:minecraft.music_disc_11
scoreboard objectives add heldDisc dummy
scoreboard objectives add UItimer dummy
scoreboard objectives add Musictimer dummy