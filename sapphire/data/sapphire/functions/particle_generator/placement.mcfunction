#summon sp.particle in observer
execute as @s[tag=sp.valid] positioned ~ ~-1 ~ unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.particle","sp.particlesetup","sp.particle_blue"]}
execute as @s[tag=sp.valid] positioned ~ ~1 ~ unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.particle","sp.particlesetup","sp.particle_blue"]}
execute as @s[tag=sp.valid] positioned ~ ~ ~1 unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.particle","sp.particlesetup","sp.particle_blue"]}
execute as @s[tag=sp.valid] positioned ~ ~ ~-1 unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.particle","sp.particlesetup","sp.particle_blue"]}
execute as @s[tag=sp.valid] positioned ~1 ~ ~ unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.particle","sp.particlesetup","sp.particle_blue"]}
execute as @s[tag=sp.valid] positioned ~-1 ~ ~ unless entity @e[tag=sp.particle,distance=..0.5] unless entity @e[tag=ll.fan,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:216374,Tags:["sp.particle","sp.particlesetup","sp.particle_blue"]}

#invalid placement will give the item back
execute unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=sp.particle,tag=sp.particlesetup] run give @p[distance=..6] minecraft:squid_spawn_egg{EntityTag:{Tags:["sp.spawnsquid","sp.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=sp.particle,tag=sp.particlesetup] run recipe give @p[distance=..6] sapphire:weather_detector

#you cannot create more than one detector at once
execute as @e[limit=1,sort=random,distance=..1.25,tag=sp.particle,tag=sp.particlesetup] at @s run kill @e[distance=0.1..3,tag=sp.particle,tag=sp.particlesetup]
execute as @e[limit=1,sort=random,distance=..1.25,tag=sp.particle,tag=sp.particlesetup] at @s run recipe give @p[distance=..6] weather_detector
execute as @e[limit=1,sort=random,distance=..1.25,tag=sp.particle,tag=sp.particlesetup] at @s run recipe give @p[distance=..6] lightning_rod

#setup sp.particle
execute as @e[tag=sp.particle,tag=sp.particlesetup] at @s run function sapphire:particle_generator/facing
#summon minecraft:area_effect_cloud ~ ~1 ~-1 {Tags:["ll.beam"],Duration:216374}
