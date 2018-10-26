#calls ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat,tag=ll.valid] at @s run function limitedlife:ventilator_placement

#effects and motion
execute as @e[type=armor_stand,tag=ll.fansouth] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~ ~-2 0.05 0.05 1 0.001 1 force
execute as @e[type=armor_stand,tag=ll.fanwest] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~2 ~ ~ 1 0.05 0.05 0.001 1 force
execute as @e[type=armor_stand,tag=ll.fannorth] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~ ~2 0.05 0.05 1 0.001 1 force
execute as @e[type=armor_stand,tag=ll.faneast] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~-2 ~ ~ 1 0.05 0.05 0.001 1 force
execute as @e[type=armor_stand,tag=ll.fanup] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~-2 ~ 0.05 1 0.05 0.001 1 force
execute as @e[type=armor_stand,tag=ll.fandown] at @s if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~2 ~ 0.05 1 0.05 0.001 1 force

execute as @e[type=armor_stand,tag=ll.fansouth] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dz=-4,limit=1,sort=nearest] {Motion:[0.0d,0.0d,-0.5d]}
execute as @e[type=armor_stand,tag=ll.fanwest] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=4,limit=1,sort=nearest] {Motion:[0.5d,0.0d,0.0d]}
execute as @e[type=armor_stand,tag=ll.fannorth] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dz=4,limit=1,sort=nearest] {Motion:[0.0d,0.0d,0.5d]}
execute as @e[type=armor_stand,tag=ll.faneast] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=-4,limit=1,sort=nearest] {Motion:[-0.5d,0.0d,0.0d]}
execute as @e[type=armor_stand,tag=ll.fanup] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-4 ~-0.5 run data merge entity @e[dy=4,limit=1,sort=nearest] {Motion:[0.0d,-0.5d,0.0d]}
execute as @e[type=armor_stand,tag=ll.fandown] at @s if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dy=4,limit=1,sort=nearest] {Motion:[0.0d,0.5d,0.0d]}

#kill ll.fan armor_stands
execute as @e[type=armor_stand,tag=ll.fan] at @s unless block ~ ~ ~ minecraft:observer run summon minecraft:bat ~ ~ ~
execute as @e[type=armor_stand,tag=ll.fan] at @s unless block ~ ~ ~ minecraft:observer run kill @s
