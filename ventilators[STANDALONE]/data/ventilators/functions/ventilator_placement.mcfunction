#summon ll.fan in observer
execute as @s[tag=ll.valid] positioned ~ ~-1 ~ unless entity @e[tag=ll.fan,distance=..0.5] unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["ll.fan","ll.fansetup"]}
execute as @s[tag=ll.valid] positioned ~ ~1 ~ unless entity @e[tag=ll.fan,distance=..0.5] unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["ll.fan","ll.fansetup"]}
execute as @s[tag=ll.valid] positioned ~ ~ ~1 unless entity @e[tag=ll.fan,distance=..0.5] unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["ll.fan","ll.fansetup"]}
execute as @s[tag=ll.valid] positioned ~ ~ ~-1 unless entity @e[tag=ll.fan,distance=..0.5] unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["ll.fan","ll.fansetup"]}
execute as @s[tag=ll.valid] positioned ~1 ~ ~ unless entity @e[tag=ll.fan,distance=..0.5] unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["ll.fan","ll.fansetup"]}
execute as @s[tag=ll.valid] positioned ~-1 ~ ~ unless entity @e[tag=ll.fan,distance=..0.5] unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=sp.sapphire_glass,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["ll.fan","ll.fansetup"]}

#invalid placement will give the item back
execute unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=ll.fan,tag=ll.fansetup] run give @p minecraft:bat_spawn_egg{EntityTag:{Tags:["ll.spawnbat","ll.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Bat Wings\",\"color\":\"yellow\",\"italic\":false}"}} 1

#you cannot create more than one fan at once
execute as @e[limit=1,sort=random,distance=..1.25,tag=ll.fan,tag=ll.fansetup] at @s run kill @e[distance=0.1..3,tag=ll.fan,tag=ll.fansetup]

#setup ll.fan
execute as @e[tag=ll.fan,tag=ll.fansetup] at @s run function ventilators:ventilator_facing
