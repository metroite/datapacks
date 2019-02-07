#effects and motion
execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~-1 #limitedlife:nocollision positioned ~ ~ ~ run function limitedlife:ventilators/direction/south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] if block ~1 ~ ~ #limitedlife:nocollision positioned ~ ~ ~ run function limitedlife:ventilators/direction/west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~1 #limitedlife:nocollision positioned ~ ~ ~ run function limitedlife:ventilators/direction/north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] if block ~-1 ~ ~ #limitedlife:nocollision positioned ~ ~ ~ run function limitedlife:ventilators/direction/east

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~-1 #limitedlife:nocollision if block ~ ~ ~-2 #limitedlife:nocollision positioned ~ ~ ~-1 run function limitedlife:ventilators/direction/south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] if block ~1 ~ ~ #limitedlife:nocollision if block ~2 ~ ~ #limitedlife:nocollision positioned ~1 ~ ~ run function limitedlife:ventilators/direction/west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~1 #limitedlife:nocollision if block ~ ~ ~2 #limitedlife:nocollision positioned ~ ~ ~1 run function limitedlife:ventilators/direction/north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] if block ~-1 ~ ~ #limitedlife:nocollision if block ~-2 ~ ~ #limitedlife:nocollision positioned ~-1 ~ ~ run function limitedlife:ventilators/direction/east

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~-1 #limitedlife:nocollision if block ~ ~ ~-2 #limitedlife:nocollision if block ~ ~ ~-3 #limitedlife:nocollision positioned ~ ~ ~-2 run function limitedlife:ventilators/direction/south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] if block ~1 ~ ~ #limitedlife:nocollision if block ~2 ~ ~ #limitedlife:nocollision if block ~3 ~ ~ #limitedlife:nocollision positioned ~2 ~ ~ run function limitedlife:ventilators/direction/west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~1 #limitedlife:nocollision if block ~ ~ ~2 #limitedlife:nocollision if block ~ ~ ~3 #limitedlife:nocollision positioned ~ ~ ~2 run function limitedlife:ventilators/direction/north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] if block ~-1 ~ ~ #limitedlife:nocollision if block ~-2 ~ ~ #limitedlife:nocollision if block ~-3 ~ ~ #limitedlife:nocollision positioned ~-2 ~ ~ run function limitedlife:ventilators/direction/east

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~-1 #limitedlife:nocollision if block ~ ~ ~-2 #limitedlife:nocollision if block ~ ~ ~-3 #limitedlife:nocollision if block ~ ~ ~-4 #limitedlife:nocollision positioned ~ ~ ~-3 run function limitedlife:ventilators/direction/south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] if block ~-1 ~ ~ #limitedlife:nocollision if block ~2 ~ ~ #limitedlife:nocollision if block ~3 ~ ~ #limitedlife:nocollision if block ~4 ~ ~ #limitedlife:nocollision positioned ~3 ~ ~ run function limitedlife:ventilators/direction/west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~-1 #limitedlife:nocollision if block ~ ~ ~2 #limitedlife:nocollision if block ~ ~ ~3 #limitedlife:nocollision if block ~ ~ ~4 #limitedlife:nocollision positioned ~ ~ ~3 run function limitedlife:ventilators/direction/north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] if block ~-1 ~ ~ #limitedlife:nocollision if block ~-2 ~ ~ #limitedlife:nocollision if block ~-3 ~ ~ #limitedlife:nocollision if block ~-4 ~ ~ #limitedlife:nocollision positioned ~-3 ~ ~ run function limitedlife:ventilators/direction/east

execute as @s[tag=ll.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~-1 #limitedlife:nocollision if block ~ ~ ~-2 #limitedlife:nocollision if block ~ ~ ~-3 #limitedlife:nocollision if block ~ ~ ~-4 #limitedlife:nocollision if block ~ ~ ~-5 #limitedlife:nocollision positioned ~ ~ ~-4 run function limitedlife:ventilators/direction/south
execute as @s[tag=ll.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] if block ~1 ~ ~ #limitedlife:nocollision if block ~2 ~ ~ #limitedlife:nocollision if block ~3 ~ ~ #limitedlife:nocollision if block ~4 ~ ~ #limitedlife:nocollision if block ~5 ~ ~ #limitedlife:nocollision positioned ~4 ~ ~ run function limitedlife:ventilators/direction/west
execute as @s[tag=ll.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~ ~1 #limitedlife:nocollision if block ~ ~ ~2 #limitedlife:nocollision if block ~ ~ ~3 #limitedlife:nocollision if block ~ ~ ~4 #limitedlife:nocollision if block ~ ~ ~5 #limitedlife:nocollision positioned ~ ~ ~4 run function limitedlife:ventilators/direction/north
execute as @s[tag=ll.faneast] if block ~ ~ ~ minecraft:observer[powered=true] if block ~-1 ~ ~ #limitedlife:nocollision if block ~-2 ~ ~ #limitedlife:nocollision if block ~-3 ~ ~ #limitedlife:nocollision if block ~-4 ~ ~ #limitedlife:nocollision if block ~-5 ~ ~ #limitedlife:nocollision positioned ~-4 ~ ~ run function limitedlife:ventilators/direction/east

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~-1 ~ #limitedlife:nocollision positioned ~ ~ ~ run function limitedlife:ventilators/direction/up
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~1 ~ #limitedlife:nocollision positioned ~ ~ ~ run function limitedlife:ventilators/direction/down

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~-1 ~ #limitedlife:nocollision if block ~ ~-2 ~ #limitedlife:nocollision positioned ~ ~-1 ~ run function limitedlife:ventilators/direction/up
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~1 ~ #limitedlife:nocollision if block ~ ~2 ~ #limitedlife:nocollision positioned ~ ~1 ~ run function limitedlife:ventilators/direction/down

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~-1 ~ #limitedlife:nocollision if block ~ ~-2 ~ #limitedlife:nocollision if block ~ ~-3 ~ #limitedlife:nocollision positioned ~ ~-2 ~ run function limitedlife:ventilators/direction/up
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~1 ~ #limitedlife:nocollision if block ~ ~2 ~ #limitedlife:nocollision if block ~ ~3 ~ #limitedlife:nocollision positioned ~ ~2 ~ run function limitedlife:ventilators/direction/down

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~-1 ~ #limitedlife:nocollision if block ~ ~-2 ~ #limitedlife:nocollision if block ~ ~-3 ~ #limitedlife:nocollision if block ~ ~-4 ~ #limitedlife:nocollision positioned ~ ~-3 ~ run function limitedlife:ventilators/direction/up
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~1 ~ #limitedlife:nocollision if block ~ ~2 ~ #limitedlife:nocollision if block ~ ~3 ~ #limitedlife:nocollision if block ~ ~4 ~ #limitedlife:nocollision positioned ~ ~3 ~ run function limitedlife:ventilators/direction/down

execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~-1 ~ #limitedlife:nocollision if block ~ ~-2 ~ #limitedlife:nocollision if block ~ ~-3 ~ #limitedlife:nocollision if block ~ ~-4 ~ #limitedlife:nocollision if block ~ ~-5 ~ #limitedlife:nocollision positioned ~ ~-4 ~ run function limitedlife:ventilators/direction/up
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] if block ~ ~1 ~ #limitedlife:nocollision if block ~ ~2 ~ #limitedlife:nocollision if block ~ ~3 ~ #limitedlife:nocollision if block ~ ~4 ~ #limitedlife:nocollision if block ~ ~5 ~ #limitedlife:nocollision positioned ~ ~4 ~ run function limitedlife:ventilators/direction/down

#clear levitation
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~1 ~-12 ~1 run effect clear @a[dy=12,dx=-4,dz=-4,limit=1,sort=nearest,nbt={OnGround:1b},nbt={ActiveEffects:[{Id:25b,ShowParticles:0b,Amplifier:-36b}]}] minecraft:levitation
execute as @s[tag=ll.fanup] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~-15 ~-0.5 run effect clear @a[limit=1,sort=nearest,distance=..10,nbt={ActiveEffects:[{Id:25b,ShowParticles:0b,Amplifier:-36b}]}] minecraft:levitation
execute as @s[tag=ll.fandown] if block ~ ~ ~ minecraft:observer[powered=true] positioned ~-0.5 ~15 ~-0.5 run effect clear @a[limit=1,sort=nearest,distance=..10,nbt={ActiveEffects:[{Id:25b,ShowParticles:0b,Amplifier:15b}]}] minecraft:levitation

#kill ll.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function limitedlife:ventilators/ventilatorcleanup
