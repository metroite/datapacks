playsound minecraft:block.fire.extinguish ambient @a[distance=..16] ~ ~ ~ 1 2
stopsound @a[distance=..16] block minecraft:item.bucket.empty
particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
scoreboard players reset @s hp.cauldron
fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron[level=1]
fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron[level=2]
fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron[level=3]
