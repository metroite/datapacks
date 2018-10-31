#effects and motion
execute as @s[tag=ll.fansouth] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~0.5 ~-2.25 0.05 0.05 2 0.001 1 normal
execute as @s[tag=ll.fanwest] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~2.25 ~0.5 ~ 2 0.05 0.05 0.001 1 normal
execute as @s[tag=ll.fannorth] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~0.5 ~2.25 0.05 0.05 2 0.001 1 normal
execute as @s[tag=ll.faneast] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~-2.25 ~0.5 ~ 2 0.05 0.05 0.001 1 normal
execute as @s[tag=ll.fanup] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~-2.25 ~ 0.05 2 0.05 0.001 1 normal
execute as @s[tag=ll.fandown] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~2.25 ~ 0.05 2 0.05 0.001 1 normal

execute as @s[tag=ll.fansouth] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dz=-4,limit=1,sort=nearest] {Motion:[0.0d,0.0d,-0.5d]}
execute as @s[tag=ll.fanwest] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=4,limit=1,sort=nearest] {Motion:[0.5d,0.0d,0.0d]}
execute as @s[tag=ll.fannorth] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dz=4,limit=1,sort=nearest] {Motion:[0.0d,0.0d,0.5d]}
execute as @s[tag=ll.faneast] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=-4,limit=1,sort=nearest] {Motion:[-0.5d,0.0d,0.0d]}
execute as @s[tag=ll.fanup] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-4 ~-0.5 run data merge entity @e[dy=4,limit=1,sort=nearest] {Motion:[0.0d,-0.5d,0.0d]}
execute as @s[tag=ll.fandown] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dy=4,limit=1,sort=nearest] {Motion:[0.0d,0.5d,0.0d]}

#kill ll.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilatorcleanup
