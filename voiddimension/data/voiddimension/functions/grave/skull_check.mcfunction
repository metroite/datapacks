#block range
#particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ #voiddimension:skulls run scoreboard players add %range% vd.grave 1
execute if block ~ ~ ~ #voiddimension:skulls run scoreboard players reset %range% vd.grave
#check for any kind of skull/head in the direction the player is looking at
execute if entity @s[y_rotation=-15..15] if block ~ ~ ~ #voiddimension:skulls[rotation=0] align xyz positioned ~0.5 ~0.5 ~0.5 run function voiddimension:grave/effects
execute if entity @s[y_rotation=75..105] if block ~ ~ ~ #voiddimension:skulls[rotation=4] align xyz positioned ~0.5 ~0.5 ~0.5 run function voiddimension:grave/effects
execute if entity @s[y_rotation=165..-165] if block ~ ~ ~ #voiddimension:skulls[rotation=8] align xyz positioned ~0.5 ~0.5 ~0.5 run function voiddimension:grave/effects
execute if entity @s[y_rotation=-105..-75] if block ~ ~ ~ #voiddimension:skulls[rotation=12] align xyz positioned ~0.5 ~0.5 ~0.5 run function voiddimension:grave/effects
#recursive forward motion
execute if score %range% vd.grave > 0 vd.coordinates if score %range% vd.grave <= $maxrange$ vd.grave unless block ~ ~ ~ #voiddimension:skulls positioned ^ ^ ^0.5 run function voiddimension:grave/skull_check
