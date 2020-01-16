execute if block ~ ~-1 ~ minecraft:hay_block run tag @s add ss.strength1
execute if block ~ ~-1 ~ minecraft:hay_block if block ~ ~-2 ~ minecraft:hay_block run tag @s add ss.strength2
execute if block ~ ~-1 ~ minecraft:hay_block if block ~ ~-2 ~ minecraft:hay_block if block ~ ~-3 ~ minecraft:hay_block run tag @s add ss.strength3
scoreboard players operation @s ss.counter = $global$ ss.counter
scoreboard players operation @s ss.counter += $duration$ ss.counter
scoreboard players operation @s[tag=ss.strength1] ss.counter += $duration$ ss.counter
scoreboard players operation @e[tag=ss.strength2] ss.counter += $duration$ ss.counter
scoreboard players operation @e[tag=ss.strength3] ss.counter += $duration$ ss.counter
