#kill too many SU-entities
execute as @s[tag=sp.sapphire_glasssetup] run kill @e[tag=sp.sapphire_glasssetup,distance=0.5..3]
#calling cleanup when sapphire_glass is destroyed
execute unless block ~ ~ ~ minecraft:light_blue_stained_glass run function limitedlife:sapphire/sapphire_glass/cleanup
#effects
execute at @s[tag=!sp.sapphire_glasssetup] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
#remove SU-tag
tag @s remove sp.sapphire_glasssetup
tag @s remove metroite.placement
