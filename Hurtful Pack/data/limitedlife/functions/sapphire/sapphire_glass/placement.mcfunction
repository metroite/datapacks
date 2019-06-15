#summon sp.sapphire_glass in glass
execute positioned ~ ~-1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.placement","metroite.place"]}
execute positioned ~ ~1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.placement","metroite.place"]}
execute positioned ~ ~ ~1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.placement","metroite.place"]}
execute positioned ~ ~ ~-1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.placement","metroite.place"]}
execute positioned ~1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.placement","metroite.place"]}
execute positioned ~-1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","metroite.placement","metroite.place"]}

#you cannot create more than one sapphire_glass at once
execute as @e[tag=sp.sapphire_glass,tag=metroite.placement,limit=1,sort=nearest] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["metroite.placement","metroite.place"]}

#setup sp.sapphire_glass
execute as @e[tag=sp.sapphire_glass,tag=metroite.placement,limit=1,sort=nearest] at @s run function limitedlife:sapphire/sapphire_glass/placing
