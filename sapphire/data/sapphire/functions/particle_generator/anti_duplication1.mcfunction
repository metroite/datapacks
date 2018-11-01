execute as @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}] at @s if block ~ ~ ~ minecraft:observer[powered=true] run fill ~ ~ ~ ~ ~ ~ minecraft:observer[powered=false] replace minecraft:observer[powered=true]
kill @e[distance=0.1..3,tag=sp.particle,nbt={Age:1}]
kill @e[distance=0.1..3,tag=sp.sapphire_glass,nbt={Age:1}]
kill @e[distance=0.1..3,tag=sp.anti_duplication,nbt={Age:1}]
