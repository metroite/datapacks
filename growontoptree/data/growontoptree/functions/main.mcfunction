#detects if player is in a log or leaf block, then recursively teleports the player up
execute as @a at @s if block ~ ~ ~ #minecraft:saplings run tag @s add got.sapling
execute as @a[tag=got.sapling] at @s run function growontoptree:grow
