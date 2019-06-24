#score range reset for skull_check (resets the effects)
execute if score %range% vd.grave > $maxrange$ vd.grave run scoreboard players reset @s vd.grave
execute if score %range% vd.grave > $maxrange$ vd.grave run scoreboard players reset %range% vd.grave
#check for wither_rose on soul_sand
execute if block ~1 ~1 ~ minecraft:wither_rose if block ~1 ~ ~ minecraft:soul_sand positioned ~ ~1.5 ~ run function voiddimension:grave/skull_check
execute if block ~-1 ~1 ~ minecraft:wither_rose if block ~-1 ~ ~ minecraft:soul_sand positioned ~ ~1.5 ~ run function voiddimension:grave/skull_check
execute if block ~ ~1 ~1 minecraft:wither_rose if block ~ ~ ~1 minecraft:soul_sand positioned ~ ~1.5 ~ run function voiddimension:grave/skull_check
execute if block ~ ~1 ~-1 minecraft:wither_rose if block ~ ~ ~-1 minecraft:soul_sand positioned ~ ~1.5 ~ run function voiddimension:grave/skull_check
