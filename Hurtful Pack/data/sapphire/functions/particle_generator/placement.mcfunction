#summon sp.particle in observer
execute positioned ~ ~-1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particle_blue","metroite.placement","metroite.place"]}
execute positioned ~ ~1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particle_blue","metroite.placement","metroite.place"]}
execute positioned ~ ~ ~1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particle_blue","metroite.placement","metroite.place"]}
execute positioned ~ ~ ~-1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particle_blue","metroite.placement","metroite.place"]}
execute positioned ~1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particle_blue","metroite.placement","metroite.place"]}
execute positioned ~-1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particle_blue","metroite.placement","metroite.place"]}

#feature-compatibility: torchout
execute if score $torchout$ hp.storeboard matches 1.. run function torchout:sapphire/placement

#invalid placement will give the item back
execute unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=metroite.place,tag=metroite.placement] run function sapphire:particle_generator/invalid_placement

#setup sp.particle
execute as @e[tag=sp.particle,tag=metroite.placement,limit=1,sort=nearest] at @s run function sapphire:particle_generator/facing

#kill item
kill @s
