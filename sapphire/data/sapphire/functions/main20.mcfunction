#re-schedule
schedule function sapphire:main20 20t
#calls x and z oredrop#
execute as @e[type=minecraft:armor_stand,tag=sp.oredrop] at @s run function sapphire:generator/oredrop
#Sapphire ore
execute as @e[type=minecraft:area_effect_cloud,tag=sp.sapphire_main] at @s run function sapphire:sapphire_ore/sapphire_main
#crafting lightning rod (Inventory)
execute as @a[scores={sp.craftlight=1..}] run function sapphire:lightning_rod/craft
#crafting water_detector (Inventory)
execute as @a[scores={sp.craftdetector=1..}] run function sapphire:water_detector/craft
#particle for sapphire_glass
execute as @e[type=minecraft:area_effect_cloud,tag=sp.sapphire_glass] at @s run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 5
