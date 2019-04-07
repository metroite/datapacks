#calls x and z oredrop
execute as @e[tag=sp.oredrop] at @s run function sapphire:generator/oredrop
#area_effect_cloud sp.noore: makes sure that sapphire ore can only generate 128 blocks appart
execute as @e[tag=sp.noore] at @s run kill @e[tag=sp.oredrop,distance=..128]
#calling Revoke (therefore make it possible to spawn a new sapphire ore) deep_ocean advancement
execute as @a[tag=sp.deep_ocean] at @s unless entity @e[tag=sp.sapphire_main,tag=!sp.so.placed,distance=..320] unless entity @e[tag=sp.oredrop,tag=!valid,distance=..320] unless entity @e[tag=sp.noore,distance=..320] run function sapphire:generator/revoke_deep_ocean

#call cleanup
execute as @e[tag=sp.sapphire_ore] at @s unless block ~ ~ ~ minecraft:redstone_ore run function sapphire:sapphire_ore/cleanup
#call sapphire_main: remove SU-tag from sapphire_ore
execute as @e[tag=sp.sapphire_main] at @s if block ~ ~ ~ minecraft:redstone_ore run function sapphire:sapphire_ore/sapphire_main

##placement-API: sapphire_ore
#calling effects if item is selected
execute as @a[tag=sp.so.pa.tag] at @s run function sapphire:sapphire_ore/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:redstone_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17}}}] add sp.so.pa.tag
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:redstone_ore"}}] run tag @s add sp.so.pa.tag
scoreboard players reset @a[tag=!sp.so.pa.tag] sp.so.pa.ore
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.so.pa.fail=1..}] at @s run function sapphire:sapphire_ore/fallback

#feature-compatibility: limitedlife
function limitedlife:sapphire/main

#calls particle_generator
execute as @e[tag=sp.particle] at @s run function sapphire:particle_generator/particle
#calls particle_generator placement
execute as @e[type=minecraft:item,tag=sp.spawnsquid] at @s run function sapphire:particle_generator/placement

#crafting lightning rod
execute as @a[scores={sp.craftlight=1..}] run give @s minecraft:redstone_torch{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Lightning Rod\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={sp.craftlight=1..}] run scoreboard players remove @s sp.craftlight 1
execute as @e[tag=sp.lr.attractor] at @s if block ~ ~ ~ redstone_torch run function sapphire:lightning_rod/particle_ground
execute as @e[tag=sp.lr.attractor] at @s if block ~ ~ ~ redstone_wall_torch run function sapphire:lightning_rod/particle_wall
execute as @e[tag=sp.lr.attractor] at @s unless block ~ ~ ~ minecraft:redstone_torch unless block ~ ~ ~ minecraft:redstone_wall_torch run function sapphire:lightning_rod/cleanup

##placement-API: lightning_rod
#calling effects if item is selected
execute as @a[tag=sp.lr.pa.tag] at @s run function sapphire:lightning_rod/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:redstone_torch",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add sp.lr.pa.tag
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_torch",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:redstone_torch"}}] run tag @s add sp.lr.pa.tag
scoreboard players reset @a[tag=!sp.lr.pa.tag] sp.lr.pa.torch
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.lr.pa.fail=1..}] at @s run function sapphire:lightning_rod/fallback

#crafting water_detector (Inventory)
execute as @a[scores={sp.craftdetector=1..}] run give @s minecraft:observer{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Water Detector\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={sp.craftdetector=1..}] run scoreboard players remove @s sp.craftdetector 1
execute as @e[tag=sp.wd.detector] at @s run function sapphire:water_detector/particle
execute as @e[tag=sp.wd.fire] at @s unless entity @e[tag=sp.wd.detector,distance=..0.5] run kill @s
execute as @e[tag=sp.wd.gem] at @s unless entity @e[tag=sp.wd.detector,distance=..0.5] run kill @s

##placement-API: water detector
#calling effects if item is selected
execute as @a[tag=sp.wd.pa.tag] at @s run function sapphire:water_detector/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:observer",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add sp.wd.pa.tag
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:observer",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:observer"}}] run tag @s add sp.wd.pa.tag
scoreboard players reset @a[tag=!sp.wd.pa.tag] sp.wd.pa.detec
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.wd.pa.fail=1..}] at @s run function sapphire:water_detector/fallback
