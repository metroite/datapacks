#effects
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
#kill sp.sapphire_glass area_effect_cloud
execute unless block ~ ~ ~ minecraft:light_blue_stained_glass run function limitedlife:sapphire/sapphire_glass/cleanup
#remove SU-tag
tag @s[tag=sp.sapphire_glasssetup] remove sp.sapphire_glasssetup
