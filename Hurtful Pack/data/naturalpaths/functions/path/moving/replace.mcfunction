execute if block ~ ~-0.1 ~ minecraft:grass_block run playsound minecraft:block.grass.break block @a ~ ~ ~ 0.5 1
execute if block ~ ~-0.1 ~ minecraft:dirt run playsound minecraft:block.grass.break block @a ~ ~ ~ 0.5 0.75
execute if block ~ ~-0.1 ~ minecraft:coarse_dirt run playsound minecraft:block.grass.break block @a ~ ~ ~ 0.5 0.5
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:grass_path replace minecraft:coarse_dirt
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:coarse_dirt replace minecraft:dirt
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:dirt replace minecraft:grass_block
#reset score
scoreboard players reset @s np.global
