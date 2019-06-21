execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=area_effect_cloud,tag=metroite.place,distance=..0.5] run scoreboard players reset @s sp.glass_placed
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=area_effect_cloud,tag=metroite.place,distance=..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.place"]}
