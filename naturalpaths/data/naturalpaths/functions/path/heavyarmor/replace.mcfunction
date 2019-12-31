execute if block ~ ~-0.1 ~ minecraft:grass_block run playsound minecraft:block.grass.break block @a ~ ~ ~ 0.5 1
execute if block ~ ~-0.1 ~ minecraft:dirt run playsound minecraft:block.grass.break block @a ~ ~ ~ 0.5 0.75
execute if block ~ ~-0.1 ~ minecraft:coarse_dirt run playsound minecraft:block.grass.break block @a ~ ~ ~ 0.5 0.5
execute if block ~ ~-0.1 ~ minecraft:stone run playsound minecraft:block.stone.break block @a ~ ~ ~ 1.5 0.5
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:grass_path replace minecraft:coarse_dirt
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:grass_path replace minecraft:dirt
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:coarse_dirt replace minecraft:grass_block
fill ~ ~-0.1 ~ ~ ~-0.1 ~ minecraft:cobblestone replace minecraft:stone
#heavy sound
execute if block ~ ~-0.1 ~ #naturalpaths:compressable_dirt run playsound minecraft:entity.cow.step ambient @a ~ ~ ~ 0.5 1.5
#reset score
scoreboard players reset @s np.global
