#generate mushroom and initiate further spread
execute at @s[nbt={OnGround:1b},tag=g.spreadshroom,tag=g.redshroom] if block ~ ~-1 ~ #graves:shroomable unless block ~ ~ ~ #graves:mushroom unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run function graves:usebonemeal/sapling/mushroom/red_spread
execute at @s[nbt={OnGround:1b},tag=g.spreadshroom,tag=g.brownshroom] if block ~ ~-1 ~ #graves:shroomable unless block ~ ~ ~ #graves:mushroom unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run function graves:usebonemeal/sapling/mushroom/brown_spread
execute at @s[nbt={OnGround:1b}] if block ~ ~-1 ~ #graves:shroomable if block ~ ~ ~ #graves:space unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run particle minecraft:angry_villager ~ ~ ~ 0.1 0.1 0.1 1 1 normal
execute at @s[nbt={OnGround:1b},tag=g.redshroom] if block ~ ~-1 ~ #graves:shroomable if block ~ ~ ~ #graves:space unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run setblock ~ ~ ~ minecraft:red_mushroom destroy
execute at @s[nbt={OnGround:1b},tag=g.brownshroom] if block ~ ~-1 ~ #graves:shroomable if block ~ ~ ~ #graves:space unless block ~ ~ ~1 #graves:mushroom unless block ~ ~ ~-1 #graves:mushroom unless block ~1 ~ ~ #graves:mushroom unless block ~-1 ~ ~ #graves:mushroom run setblock ~ ~ ~ minecraft:brown_mushroom destroy

#kill entities
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:red_mushroom"}}]
kill @e[type=minecraft:item,distance=..1,nbt={Item:{id:"minecraft:brown_mushroom"}}]
kill @s[nbt={OnGround:1b}]
