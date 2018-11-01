#bugfix: fixes observers staying powered
execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=south,powered=false] replace minecraft:observer[facing=south,powered=true]
execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=west,powered=false] replace minecraft:observer[facing=west,powered=true]
execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=north,powered=false] replace minecraft:observer[facing=north,powered=true]
execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=east,powered=false] replace minecraft:observer[facing=east,powered=true]
execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=up,powered=false] replace minecraft:observer[facing=up,powered=true]
execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:observer[facing=down,powered=false] replace minecraft:observer[facing=down,powered=true]
#kill chain
kill @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}]
kill @e[distance=0.1..3,tag=sp.sapphire_glass,nbt={Age:1}]
kill @e[distance=0.1..3,tag=sp.anti_duplication,nbt={Age:1}]
