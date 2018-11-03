#effects and motion
execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~0.5 ~-2.25 0.005 0.005 2 0.001 1 normal
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~2.25 ~0.5 ~ 2 0.005 0.005 0.001 1 normal
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~0.5 ~2.25 0.005 0.005 2 0.001 1 normal
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~-2.25 ~0.5 ~ 2 0.005 0.005 0.001 1 normal
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~-2.25 ~ 0.005 2 0.005 0.001 1 normal
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] run particle minecraft:poof ~ ~2.25 ~ 0.005 2 0.005 0.001 1 normal

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] run data merge entity @e[dz=-4,limit=1,sort=nearest] {Motion:[0.0d,0.0d,-0.75d]}
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] run data merge entity @e[dx=4,limit=1,sort=nearest] {Motion:[0.75d,0.0d,0.0d]}
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] run data merge entity @e[dz=4,limit=1,sort=nearest] {Motion:[0.0d,0.0d,0.75d]}
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] run data merge entity @e[dx=-4,limit=1,sort=nearest] {Motion:[-0.75d,0.0d,0.0d]}
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-4 ~-0.5 run data merge entity @e[dy=4,limit=1,sort=nearest] {Motion:[0.0d,-0.75d,0.0d]}
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dy=4,limit=1,sort=nearest] {Motion:[0.0d,0.75d,0.0d]}

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] as @a[dz=-4,limit=1,sort=nearest] at @s run tp @s ~ ~ ~-0.25
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] as @a[dx=4,limit=1,sort=nearest] at @s run tp @s ~0.25 ~ ~
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] as @a[dz=4,limit=1,sort=nearest] at @s run tp @s ~ ~ ~0.25
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] as @a[dx=-4,limit=1,sort=nearest] at @s run tp @s ~-0.25 ~ ~
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-4 ~-0.5 run effect give @a[dy=4,limit=1,sort=nearest] minecraft:levitation 1 220 true
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~ ~-0.5 run effect give @a[dy=4,limit=1,sort=nearest] minecraft:levitation 1 15 true

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-4 ~-0.5 run effect clear @a[dy=4,limit=1,sort=nearest,nbt={OnGround:1b}] minecraft:levitation

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-6 ~-0.5 run effect clear @a[dy=4,limit=1,sort=nearest,distance=..3] minecraft:levitation
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~6 ~-0.5 run effect clear @a[limit=1,sort=nearest,distance=..3] minecraft:levitation

#kill ll.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilatorcleanup
