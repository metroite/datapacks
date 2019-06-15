execute if block ~ ~ ~ #minecraft:logs run advancement grant @s only growontoptree:grow
#move up
execute if entity @s[tag=!got.leaf] if block ~ ~1 ~ #growontoptree:valid if block ~ ~2 ~ #growontoptree:valid if block ~ ~ ~ #minecraft:logs run tp @s ~ ~1 ~
execute if block ~ ~1 ~ #growontoptree:valid if block ~ ~2 ~ #growontoptree:valid if block ~ ~ ~ #minecraft:leaves[persistent=false] run tp @s ~ ~1 ~
execute if block ~ ~ ~ #minecraft:leaves[persistent=false] run tag @s add got.leaf
execute if entity @s[tag=!got.leaf] if block ~ ~1 ~ #growontoptree:valid if block ~ ~2 ~ #growontoptree:valid if block ~ ~ ~ #minecraft:logs run function growontoptree:main
execute if block ~ ~1 ~ #growontoptree:valid if block ~ ~2 ~ #growontoptree:valid if block ~ ~ ~ #minecraft:leaves[persistent=false] run function growontoptree:main
#remove tags
execute unless block ~ ~ ~ #minecraft:saplings run tag @s remove got.sapling
execute unless block ~ ~ ~ #minecraft:leaves[persistent=false] run tag @s remove got.leaf
