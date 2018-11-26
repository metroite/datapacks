#Determines direction
execute if block ~ ~ ~ minecraft:observer[facing=south] run tag @s add ll.fansouth
execute if block ~ ~ ~ minecraft:observer[facing=west] run tag @s add ll.fanwest
execute if block ~ ~ ~ minecraft:observer[facing=north] run tag @s add ll.fannorth
execute if block ~ ~ ~ minecraft:observer[facing=east] run tag @s add ll.faneast
execute if block ~ ~ ~ minecraft:observer[facing=up] run tag @s add ll.fanup
execute if block ~ ~ ~ minecraft:observer[facing=down] run tag @s add ll.fandown

#powers the observers on so they can become ventilators
execute as @s[tag=ll.fansouth] run setblock ~ ~ ~ minecraft:observer[facing=south,powered=true] replace
execute as @s[tag=ll.fanwest] run setblock ~ ~ ~ minecraft:observer[facing=west,powered=true] replace
execute as @s[tag=ll.fannorth] run setblock ~ ~ ~ minecraft:observer[facing=north,powered=true] replace
execute as @s[tag=ll.faneast] run setblock ~ ~ ~ minecraft:observer[facing=east,powered=true] replace
execute as @s[tag=ll.fanup] run setblock ~ ~ ~ minecraft:observer[facing=up,powered=true] replace
execute as @s[tag=ll.fandown] run setblock ~ ~ ~ minecraft:observer[facing=down,powered=true] replace

#placement effects
particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.05 24
playsound minecraft:entity.bat.takeoff block @a[distance=..16] ~ ~ ~ 2 0.75

#ends the fansetup cycle
tag @s remove ll.fansetup
tag @s remove metroite.placement
