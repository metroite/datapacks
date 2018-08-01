#detects if player is in a log-block, then recursively teleports the player up
execute as @a at @s if block ~ ~ ~ #minecraft:logs run tp @s ~ ~1 ~
execute as @a at @s if block ~ ~1 ~ #minecraft:logs run function growontoptree:main

#can be misused as an elevator, recommended not to use
