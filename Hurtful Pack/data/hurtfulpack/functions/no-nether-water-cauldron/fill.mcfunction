#change every torch to a button
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:cauldron[level=0] replace minecraft:cauldron[level=1]
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:cauldron[level=0] replace minecraft:cauldron[level=2]
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:cauldron[level=0] replace minecraft:cauldron[level=3]
#"out of world" kind-of-fix (to fix this: from 0 to 7 AND from 0 to -7 = 15*5 = 75 lines - no thank you, this will have to do)
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:cauldron[level=0] replace minecraft:cauldron[level=1]
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:cauldron[level=0] replace minecraft:cauldron[level=2]
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:cauldron[level=0] replace minecraft:cauldron[level=3]

#raytrace for particle position
execute positioned ~ ~1.5 ~ run function hurtfulpack:no-nether-water-cauldron/raytrace
