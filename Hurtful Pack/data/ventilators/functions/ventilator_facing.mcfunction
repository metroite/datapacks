#Determines direction
execute if block ~ ~ ~ minecraft:observer[facing=south] run tag @s add v.fansouth
execute if block ~ ~ ~ minecraft:observer[facing=west] run tag @s add v.fanwest
execute if block ~ ~ ~ minecraft:observer[facing=north] run tag @s add v.fannorth
execute if block ~ ~ ~ minecraft:observer[facing=east] run tag @s add v.faneast
execute if block ~ ~ ~ minecraft:observer[facing=up] run tag @s add v.fanup
execute if block ~ ~ ~ minecraft:observer[facing=down] run tag @s add v.fandown

#powers the observers on so they can become ventilators
execute as @s[tag=v.fansouth] run setblock ~ ~ ~ minecraft:observer[facing=south,powered=true] replace
execute as @s[tag=v.fanwest] run setblock ~ ~ ~ minecraft:observer[facing=west,powered=true] replace
execute as @s[tag=v.fannorth] run setblock ~ ~ ~ minecraft:observer[facing=north,powered=true] replace
execute as @s[tag=v.faneast] run setblock ~ ~ ~ minecraft:observer[facing=east,powered=true] replace
execute as @s[tag=v.fanup] run setblock ~ ~ ~ minecraft:observer[facing=up,powered=true] replace
execute as @s[tag=v.fandown] run setblock ~ ~ ~ minecraft:observer[facing=down,powered=true] replace

#placement effects
particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.05 24
playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 2 0.75
advancement grant @p[distance=..8] only ventilators:ventilator

#ends the fansetup cycle
tag @s remove v.fansetup
tag @s remove metroite.placement
