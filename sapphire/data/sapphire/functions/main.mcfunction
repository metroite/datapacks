#Revoke sapphire:deep_ocean if sp.oredrop is 2x the distance
#calls x and z oredrop
execute as @e[tag=sp.oredrop,tag=sp.lr.timer] at @s unless score x_random sp.sapphire = 0 sp.sapphire run function sapphire:generator/x_oredrop
execute as @e[tag=sp.oredrop,tag=sp.lr.timer] at @s if score x_random sp.sapphire = 0 sp.sapphire unless score z_random sp.sapphire = 0 sp.sapphire run function sapphire:generator/z_oredrop
execute as @e[tag=sp.oredrop,nbt={OnGround:0b},tag=!sp.valid] at @s if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire run data merge entity @s {Motion:[0.0d,-5.0d,0.0d],Tags:["sp.oredrop"]}
#call ore_placement
execute as @e[tag=sp.oredrop,nbt={OnGround:1b}] at @s if block ~ ~ ~ minecraft:water if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire run function sapphire:generator/ore_placement
execute as @e[tag=sp.oredrop,tag=sp.valid] at @s run function sapphire:generator/ore_placement
#call farm_ore
execute as @e[tag=sp.sapphire_ore] at @s unless block ~ ~ ~ minecraft:redstone_ore run function sapphire:sapphire_ore/farm_ore
#call sapphire_ore
execute as @e[tag=sp.sapphire_main] at @s if block ~ ~ ~ minecraft:redstone_ore run function sapphire:sapphire_ore/sapphire_ore
#calling Revoke (therefore make it possible to spawn a new sapphire ore) deep_ocean advancement
execute as @a[tag=sp.deep_ocean] at @s unless entity @e[tag=sp.sapphire_main,distance=..320] unless entity @e[tag=sp.oredrop,distance=..320] run function sapphire:generator/revoke_deep_ocean

#anti_duplication (max 2 custom blocks: more would require change in anti_duplication)
#execute as @e[limit=1,sort=random,tag=sp.anti_duplication] at @s run function sapphire:particle_generator/anti_duplication1

#feature-compatibility: limitedlife
function limitedlife:sapphire/main

#calls particle_generator
execute as @e[tag=sp.particle] at @s run function sapphire:particle_generator/particle
#calls particle_generator placement
execute as @e[type=minecraft:squid,tag=sp.spawnsquid] at @s run function sapphire:particle_generator/placement

#crafting lightning rod
execute as @a[scores={sp.craftlight=1..}] run give @s minecraft:armor_stand{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],EntityTag:{Tags:["sp.lightning_rod","sp.valid"]},display:{Name:"{\"text\":\"Lightning Rod\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={sp.craftlight=1..}] run scoreboard players remove @s sp.craftlight 1
execute as @e[tag=sp.lightning_rod,tag=sp.valid] at @s run function sapphire:lightning_rod/placement
execute as @e[tag=sp.lr.attractor] at @s run function sapphire:lightning_rod/particle


##Possible in 1.14 weather_detector
#data merge entity @e {DeathLootTable:"sapphire:weather"}
#summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.weather","sp.weathersetup"],Small:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"daylight_sensor",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,}
#crafting weather_detector (Inventory)
#execute as @a[scores={sp.craftdetector=1..}] run give @s minecraft:armor_stand{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],EntityTag:{Tags:["sp.weather_detector","sp.valid"]},display:{Name:"{\"text\":\"Weather Detector\",\"color\":\"yellow\",\"italic\":false}"}} 1
#execute as @a[scores={sp.craftdetector=1..}] run scoreboard players remove @s sp.craftdetector 1
