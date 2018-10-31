#summon ll.fan in observer
execute as @s[tag=ll.valid] positioned ~ ~-1 ~ unless entity @e[type=armor_stand,tag=ll.fan,distance=..0.5] unless entity @e[type=armor_stand,tag=sp.particle,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.fan","ll.fansetup"],Small:0b,Invisible:1b,Marker:1b}
execute as @s[tag=ll.valid] positioned ~ ~1 ~ unless entity @e[type=armor_stand,tag=ll.fan,distance=..0.5] unless entity @e[type=armor_stand,tag=sp.particle,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.fan","ll.fansetup"],Small:0b,Invisible:1b,Marker:1b}
execute as @s[tag=ll.valid] positioned ~ ~ ~1 unless entity @e[type=armor_stand,tag=ll.fan,distance=..0.5] unless entity @e[type=armor_stand,tag=sp.particle,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.fan","ll.fansetup"],Small:0b,Invisible:1b,Marker:1b}
execute as @s[tag=ll.valid] positioned ~ ~ ~-1 unless entity @e[type=armor_stand,tag=ll.fan,distance=..0.5] unless entity @e[type=armor_stand,tag=sp.particle,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.fan","ll.fansetup"],Small:0b,Invisible:1b,Marker:1b}
execute as @s[tag=ll.valid] positioned ~1 ~ ~ unless entity @e[type=armor_stand,tag=ll.fan,distance=..0.5] unless entity @e[type=armor_stand,tag=sp.particle,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.fan","ll.fansetup"],Small:0b,Invisible:1b,Marker:1b}
execute as @s[tag=ll.valid] positioned ~-1 ~ ~ unless entity @e[type=armor_stand,tag=ll.fan,distance=..0.5] unless entity @e[type=armor_stand,tag=sp.particle,distance=..0.5] if block ~ ~ ~ minecraft:observer run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.fan","ll.fansetup"],Small:0b,Invisible:1b,Marker:1b}

#invalid placement will give the item back
execute unless entity @e[type=armor_stand,limit=1,sort=nearest,distance=..1.25,tag=ll.fan,tag=ll.fansetup] run give @p minecraft:bat_spawn_egg{EntityTag:{Tags:["ll.spawnbat","ll.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Bat Wings\",\"color\":\"yellow\",\"italic\":false}"}} 1

#you cannot create more than one fan at once
execute as @e[type=armor_stand,limit=1,sort=random,distance=..1.25,tag=ll.fan,tag=ll.fansetup] at @s run kill @e[type=armor_stand,distance=0.1..3,tag=ll.fan,tag=ll.fansetup]

#setup ll.fan
execute as @e[type=armor_stand,tag=ll.fan,tag=ll.fansetup] at @s run function ventilators:ventilator_facing
