#summon sp.particle in observer
execute as @s[tag=sp.valid] positioned ~ ~-1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particlesetup","sp.particle_blue","metroite.placement","metroite.place"]}
execute as @s[tag=sp.valid] positioned ~ ~1 ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particlesetup","sp.particle_blue","metroite.placement","metroite.place"]}
execute as @s[tag=sp.valid] positioned ~ ~ ~1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particlesetup","sp.particle_blue","metroite.placement","metroite.place"]}
execute as @s[tag=sp.valid] positioned ~ ~ ~-1 unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particlesetup","sp.particle_blue","metroite.placement","metroite.place"]}
execute as @s[tag=sp.valid] positioned ~1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particlesetup","sp.particle_blue","metroite.placement","metroite.place"]}
execute as @s[tag=sp.valid] positioned ~-1 ~ ~ unless entity @e[tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ minecraft:observer run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.particle","sp.particlesetup","sp.particle_blue","metroite.placement","metroite.place"]}

#invalid placement will give the item back
execute as @s[tag=sp.valid] unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=metroite.place,tag=metroite.placement] run give @p[distance=..6] minecraft:squid_spawn_egg{EntityTag:{Tags:["sp.spawnsquid","sp.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}} 1

#setup sp.particle
execute as @s[tag=sp.valid] as @e[tag=sp.particle,tag=sp.particlesetup,limit=1,sort=nearest] at @s run function sapphire:particle_generator/facing

#kill spawnsquid
tp 0 -200 0
kill @s
