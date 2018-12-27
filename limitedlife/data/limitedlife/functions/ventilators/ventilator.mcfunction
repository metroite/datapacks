#effects and motion
execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~0.5 ~-2.25 0.005 0.005 2 0.001 1 normal
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~2.25 ~0.5 ~ 2 0.005 0.005 0.001 1 normal
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~0.5 ~2.25 0.005 0.005 2 0.001 1 normal
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~-2.25 ~0.5 ~ 2 0.005 0.005 0.001 1 normal
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~-2.25 ~ 0.005 2 0.005 0.001 1 normal
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~2.25 ~ 0.005 2 0.005 0.001 1 normal

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dz=-5,limit=1,sort=nearest] {Motion:[0.0d,0.0d,-0.75d]}
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=5,limit=1,sort=nearest] {Motion:[0.75d,0.0d,0.0d]}
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dz=5,limit=1,sort=nearest] {Motion:[0.0d,0.0d,0.75d]}
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dx=-5,limit=1,sort=nearest] {Motion:[-0.75d,0.0d,0.0d]}
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-5 ~-0.5 run data merge entity @e[dy=5,limit=1,sort=nearest] {Motion:[0.0d,-0.75d,0.0d]}
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dy=5,limit=1,sort=nearest] {Motion:[0.0d,0.75d,0.0d]}

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 as @a[dz=-5,limit=1,sort=nearest] at @s run function limitedlife:ventilators/collision/collision_south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 as @a[dx=5,limit=1,sort=nearest] at @s run function limitedlife:ventilators/collision/collision_west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 as @a[dz=5,limit=1,sort=nearest] at @s run function limitedlife:ventilators/collision/collision_north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 as @a[dx=-5,limit=1,sort=nearest] at @s run function limitedlife:ventilators/collision/collision_east
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-5 ~-0.5 run effect give @a[dy=5,limit=1,sort=nearest,nbt={OnGround:0b}] minecraft:levitation 1 220 true
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run effect give @a[dy=5,limit=1,sort=nearest] minecraft:levitation 1 15 true

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~ ~-4 ~ run effect clear @a[dy=4,dx=-1,dz=-1,limit=1,sort=nearest,nbt={OnGround:1b}] minecraft:levitation

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-15 ~-0.5 run effect clear @a[dy=4,limit=1,sort=nearest,distance=..12] minecraft:levitation
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~15 ~-0.5 run effect clear @a[limit=1,sort=nearest,distance=..12] minecraft:levitation

#kill ll.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function limitedlife:ventilators/ventilatorcleanup
