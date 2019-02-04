#generate mushroom and initiate further spread
execute at @s[nbt={OnGround:1b},tag=g.redshroom] if block ~ ~-1 ~ #graves:shroomable if block ~ ~ ~ #graves:space unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run setblock ~ ~ ~ minecraft:red_mushroom replace
execute at @s[nbt={OnGround:1b},tag=g.brownshroom] if block ~ ~-1 ~ #graves:shroomable if block ~ ~ ~ #graves:space unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run setblock ~ ~ ~ minecraft:brown_mushroom replace
execute at @s[nbt={OnGround:1b},tag=g.spreadshroom,tag=g.redshroom] if block ~ ~-1 ~ #graves:shroomable run function graves:usebonemeal/sapling/mushroom/red_spread
execute at @s[nbt={OnGround:1b},tag=g.spreadshroom,tag=g.brownshroom] if block ~ ~-1 ~ #graves:shroomable run function graves:usebonemeal/sapling/mushroom/brown_spread

#kill entities
kill @e[distance=..1,nbt={Item:{id:"minecraft:red_mushroom"}}]
kill @e[distance=..1,nbt={Item:{id:"minecraft:brown_mushroom"}}]
kill @s[nbt={OnGround:1b}]
