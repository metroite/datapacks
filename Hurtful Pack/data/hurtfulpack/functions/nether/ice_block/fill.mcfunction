scoreboard players set @s hp.ice_block 1
#raytrace for particle position
execute positioned ~ ~1.5 ~ run function hurtfulpack:nether/ice_block/raytrace

#change every ice to water
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:air replace #minecraft:ice
#"out of world" kind-of-fix (to fix this: from 0 to 7 AND from 0 to -7 = 15*5 = 75 lines - no thank you, this will have to do)
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:air replace #minecraft:ice
