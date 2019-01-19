#remove SU-tag
execute as @s[tag=sp.sapphire_glasssetup] run kill @e[tag=sp.sapphire_glasssetup,distance=0.5..3]
tag @s remove sp.sapphire_glasssetup
#calling cleanup when sapphire_glass is destroyed
execute unless block ~ ~ ~ minecraft:light_blue_stained_glass run function limitedlife:sapphire/sapphire_glass/cleanup
#effects
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
