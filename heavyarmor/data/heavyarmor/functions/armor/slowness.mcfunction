#apply slowness effect
execute if score @s ha.armorcount matches 15..29 run effect give @s minecraft:slowness 5 0 true
execute if score @s ha.armorcount matches 30..44 run effect give @s minecraft:slowness 5 1 true
execute if score @s ha.armorcount matches 45..59 run effect give @s minecraft:slowness 5 2 true
execute if score @s ha.armorcount matches 60..74 run effect give @s minecraft:slowness 5 3 true
execute if score @s ha.armorcount matches 75.. run effect give @s minecraft:slowness 5 4 true
