execute if block ~ ~-1 ~ minecraft:hay_block run tag @s add sf.strength1
execute if block ~ ~-1 ~ minecraft:hay_block if block ~ ~-2 ~ minecraft:hay_block run tag @s add sf.strength2
execute if block ~ ~-1 ~ minecraft:hay_block if block ~ ~-2 ~ minecraft:hay_block if block ~ ~-3 ~ minecraft:hay_block run tag @s add sf.strength3
scoreboard players operation @s sf.counter = $global$ sf.counter
scoreboard players operation @s sf.counter += $duration$ sf.counter
scoreboard players operation @s[tag=sf.strength1] sf.counter += $duration$ sf.counter
scoreboard players operation @e[tag=sf.strength2] sf.counter += $duration$ sf.counter
scoreboard players operation @e[tag=sf.strength3] sf.counter += $duration$ sf.counter
