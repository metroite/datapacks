#calling sad_orchid/success
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:light_blue_stained_glass unless entity @e[type=area_effect_cloud,tag=sp.sapphire_glass,distance=..1] unless entity @e[type=area_effect_cloud,tag=sp.sapphire_glass,tag=sp.sapphire_glasssetup,distance=..3] run function limitedlife:sapphire/sapphire_glassblock/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s sp.glass_placed 1
execute as @s[scores={sp.glass_placed=..14}] at @s unless block ~ ~ ~ minecraft:light_blue_stained_glass run function limitedlife:sapphire/sapphire_glassblock/placement
