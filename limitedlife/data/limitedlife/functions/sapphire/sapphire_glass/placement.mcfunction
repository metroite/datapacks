#summon sp.sapphire_glass in observer
execute as @s[tag=sp.valid] positioned ~ ~-1 ~ unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup"]}
execute as @s[tag=sp.valid] positioned ~ ~1 ~ unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup"]}
execute as @s[tag=sp.valid] positioned ~ ~ ~1 unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup"]}
execute as @s[tag=sp.valid] positioned ~ ~ ~-1 unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup"]}
execute as @s[tag=sp.valid] positioned ~1 ~ ~ unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup"]}
execute as @s[tag=sp.valid] positioned ~-1 ~ ~ unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:glass run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup"]}

#you cannot create more than one sapphire_glass at once
execute as @e[limit=1,sort=random,distance=..1.25,tag=sp.sapphire_glass,tag=sp.sapphire_glasssetup] at @s run function sapphire:particle_generator/anti_duplication

#setup sp.sapphire_glass
execute as @e[tag=sp.sapphire_glass,tag=sp.sapphire_glasssetup,limit=1,sort=nearest] at @s run function limitedlife:sapphire/sapphire_glass/placing
