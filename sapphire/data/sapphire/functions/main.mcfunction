#calls x and z oredrop
execute as @e[tag=sp.oredrop] at @s run function sapphire:generator/oredrop
#area_effect_cloud sp.noore
execute as @e[tag=sp.noore] at @s run kill @e[tag=sp.oredrop,distance=..128]
#calling Revoke (therefore make it possible to spawn a new sapphire ore) deep_ocean advancement
execute as @a[tag=sp.deep_ocean] at @s unless entity @e[tag=sp.sapphire_main,tag=!sp.so.placed,distance=..320] unless entity @e[tag=sp.oredrop,tag=!valid,distance=..320] unless entity @e[tag=sp.noore,distance=..320] run function sapphire:generator/revoke_deep_ocean
#call cleanup
execute as @e[tag=sp.sapphire_ore] at @s unless block ~ ~ ~ minecraft:redstone_ore run function sapphire:sapphire_ore/cleanup
#call sapphire_ore
execute as @e[tag=sp.sapphire_main] at @s if block ~ ~ ~ minecraft:redstone_ore run function sapphire:sapphire_ore/sapphire_ore

##placement-API: sapphire_ore
tag @a[nbt={SelectedItem:{id:"minecraft:redstone_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17}}}] add sp.so.pa.tag
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17}}]}] add sp.so.pa.tag
scoreboard players reset @a[tag=!sp.so.pa.tag] sp.so.pa.ore
execute as @a[tag=sp.so.pa.tag] at @s run function sapphire:sapphire_ore/effects
#calling placement
execute as @e[tag=sp.R.ore] at @s run function sapphire:sapphire_ore/placement

#feature-compatibility: limitedlife
function limitedlife:sapphire/main

#calls particle_generator
execute as @e[tag=sp.particle] at @s run function sapphire:particle_generator/particle
#calls particle_generator placement
execute as @e[type=minecraft:squid,tag=sp.spawnsquid] at @s run function sapphire:particle_generator/placement

#crafting lightning rod
execute as @a[scores={sp.craftlight=1..}] run give @s minecraft:redstone_torch{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Lightning Rod\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={sp.craftlight=1..}] run scoreboard players remove @s sp.craftlight 1
execute as @e[tag=sp.lr.attractor] at @s if block ~ ~ ~ redstone_torch run function sapphire:lightning_rod/particle_ground
execute as @e[tag=sp.lr.attractor] at @s if block ~ ~ ~ redstone_wall_torch run function sapphire:lightning_rod/particle_wall
execute as @e[tag=sp.lr.attractor] at @s unless block ~ ~ ~ minecraft:redstone_torch unless block ~ ~ ~ minecraft:redstone_wall_torch run function sapphire:lightning_rod/cleanup

##placement-API: lightning_rod
tag @a[nbt={SelectedItem:{id:"minecraft:redstone_torch",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add sp.lr.pa.tag
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_torch",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] add sp.lr.pa.tag
scoreboard players reset @a[tag=!sp.lr.pa.tag] sp.lr.pa.torch
execute as @a[tag=sp.lr.pa.tag] at @s run function sapphire:lightning_rod/effects
#calling placement
execute as @e[tag=sp.R.torch] at @s run function sapphire:lightning_rod/placement

##Possible in 1.14 weather_detector
#data merge entity @e {DeathLootTable:"sapphire:weather"}
#summon armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Tags:["sp.weather","sp.weathersetup"],Small:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"daylight_sensor",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,}
#crafting weather_detector (Inventory)
#execute as @a[scores={sp.craftdetector=1..}] run give @s minecraft:armor_stand{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],EntityTag:{Small:1b,Tags:["sp.weather_detector","sp.valid"]},display:{Name:"{\"text\":\"Weather Detector\",\"color\":\"yellow\",\"italic\":false}"}} 1
#execute as @a[scores={sp.craftdetector=1..}] run scoreboard players remove @s sp.craftdetector 1
