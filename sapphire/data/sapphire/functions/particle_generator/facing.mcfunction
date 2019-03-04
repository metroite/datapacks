#Determines direction
execute if block ~ ~ ~ minecraft:observer[facing=south] run tag @s add sp.particlesouth
execute if block ~ ~ ~ minecraft:observer[facing=west] run tag @s add sp.particlewest
execute if block ~ ~ ~ minecraft:observer[facing=north] run tag @s add sp.particlenorth
execute if block ~ ~ ~ minecraft:observer[facing=east] run tag @s add sp.particleeast
execute if block ~ ~ ~ minecraft:observer[facing=up] run tag @s add sp.particleup
execute if block ~ ~ ~ minecraft:observer[facing=down] run tag @s add sp.particledown

#powers the observers on so they can become particle_generators
execute as @s[tag=sp.particlesouth] run setblock ~ ~ ~ minecraft:observer[facing=south,powered=true] replace
execute as @s[tag=sp.particlewest] run setblock ~ ~ ~ minecraft:observer[facing=west,powered=true] replace
execute as @s[tag=sp.particlenorth] run setblock ~ ~ ~ minecraft:observer[facing=north,powered=true] replace
execute as @s[tag=sp.particleeast] run setblock ~ ~ ~ minecraft:observer[facing=east,powered=true] replace
execute as @s[tag=sp.particleup] run setblock ~ ~ ~ minecraft:observer[facing=up,powered=true] replace
execute as @s[tag=sp.particledown] run setblock ~ ~ ~ minecraft:observer[facing=down,powered=true] replace

#placement effects
particle minecraft:effect ~ ~ ~ 0.15 0.15 0.15 0.5 24
playsound minecraft:entity.player.levelup block @a[distance=..16] ~ ~ ~ 2 2
advancement grant @p[distance=..8] only sapphire:particle_generator

#ends the particlesetup cycle
tag @s remove metroite.placement
