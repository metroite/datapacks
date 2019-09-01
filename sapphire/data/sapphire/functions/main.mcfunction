#calls x and z oredrop
execute as @e[tag=sp.oredrop] at @s run function sapphire:generator/oredrop
#calling Revoke (therefore make it possible to spawn a new sapphire ore) deep_ocean advancement
execute as @a[tag=sp.deep_ocean] at @s unless entity @e[tag=sp.oredrop,distance=..128] unless entity @e[tag=sp.noore,distance=..128] run function sapphire:generator/revoke_deep_ocean

#call cleanup
execute as @e[tag=sp.sapphire_ore] at @s unless block ~ ~ ~ minecraft:lapis_ore run function sapphire:sapphire_ore/cleanup
#call sapphire_main: remove SU-tag from sapphire_ore
execute as @e[tag=sp.sapphire_main] at @s if block ~ ~ ~ minecraft:lapis_ore run function sapphire:sapphire_ore/sapphire_main

##placement-API: sapphire_ore
#calling effects if item is selected
execute as @a[tag=sp.so.pa.tag] at @s run function sapphire:sapphire_ore/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:lapis_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17}}}] add sp.so.pa.tag
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:lapis_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:lapis_ore"}}] run tag @s add sp.so.pa.tag
scoreboard players reset @a[tag=!sp.so.pa.tag] sp.so.pa.ore
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.so.pa.fail=1..}] at @s run function sapphire:sapphire_ore/fallback

#feature-compatibility: limitedlife
function limitedlife:sapphire/main
#feature-compatibility: torchout
function torchout:sapphire/tick

#calls placement (for polishing glass) and effects, also particles (needs to be above placement-API, because of the place score being used in order to fix the piston-dupe-glitch (could just use own objective if necessary))
scoreboard players add _global_ sp.glass_placed 1
execute as @e[tag=sp.sapphire_glass] at @s run function sapphire:sapphire_glass/block/effects
execute as @e[type=minecraft:item,tag=sp.spawnsquid] at @s run function sapphire:sapphire_glass/block/placement
execute if score _global_ sp.glass_placed >= 10 sp.glass_placed run scoreboard players set _global_ sp.glass_placed 0
scoreboard players reset @a sp.sg.piston

####placement-API for the sapphire_glass
#calling effects if item is selected
execute as @a[tag=sp.glass_block] at @s run function sapphire:sapphire_glass/placement-api/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}}] add sp.glass_block
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_stained_glass",tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:light_blue_stained_glass"}}] run tag @s add sp.glass_block
scoreboard players reset @a[tag=!sp.glass_block] sp.glass_placed
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.sg.pa.fail=1..}] at @s run function sapphire:sapphire_glass/placement-api/fallback

#calls particle_generator
execute as @e[tag=sp.particle] at @s run function sapphire:particle_generator/particle/main
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
execute as @e[tag=sp.wd.fire] at @s positioned ~ ~-0.5 ~ unless entity @e[tag=sp.wd.detector,distance=..0.5] run kill @s
execute as @e[tag=sp.wd.gem] at @s positioned ~ ~ ~ unless entity @e[tag=sp.wd.detector,distance=..0.5] run kill @s

##placement-API: water detector
#calling effects if item is selected
execute as @a[tag=sp.wd.pa.tag] at @s run function sapphire:water_detector/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:observer",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add sp.wd.pa.tag
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:observer",tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:observer"}}] run tag @s add sp.wd.pa.tag
scoreboard players reset @a[tag=!sp.wd.pa.tag] sp.wd.pa.detec
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={sp.wd.pa.fail=1..}] at @s run function sapphire:water_detector/fallback
