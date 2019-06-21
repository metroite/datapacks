#ll.deaths
execute as @a[limit=1,sort=random] unless score @s ll.deaths >= 0 ll.deaths run scoreboard players add @s ll.deaths 0
scoreboard players remove @a[scores={ll.deaths=11..}] ll.deaths 1

#tp to The Void
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 run function limitedlife:curing/thevoid

#feature-compatibility
function graves:limitedlife
execute as @e[type=minecraft:item,tag=ll.spawnbat] at @s run function limitedlife:items/batwing_recover

#helmet
execute as @a[nbt=!{Inventory:[{Slot:103b,Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:helmet/helmet
execute as @a[tag=ll.cured] run function limitedlife:helmet/helmet
#players need to be damaged to update to their real health value
effect give @a[scores={ll.deaths=1..9,ll.health=20,ll.sincedeath=..1000}] minecraft:wither 1 1 true
#Compatibility for keepInventory=true
tag @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..100}] add ll.cured

#curing item
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bat_spawn_egg",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.healingredient
execute as @e[tag=ll.healingredient] at @s positioned ~ ~1 ~ run function limitedlife:curing/curing
#make sure ll.bat entities die and players should also lose the ll.bat tag
execute as @e[type=minecraft:bat,tag=ll.bat] at @s unless entity @e[tag=ll.beam,distance=..3] run kill @s
execute as @a[tag=ll.bat] at @s unless entity @e[tag=ll.beam,distance=..5] run tag @s remove ll.bat
#calling curedvoid
execute as @a[tag=ll.curedvoid] at @s run function limitedlife:curing/curedvoid
execute unless entity @a[tag=ll.curedvoid] run kill @e[type=minecraft:bat,tag=ll.curedvoid]
#calling tired
execute as @e[tag=ll.tired] at @s run function limitedlife:curing/tired
scoreboard players reset @e[tag=!ll.tired,type=minecraft:end_crystal,scores={ll.cooking=1..}] ll.cooking
#calling beam
execute as @e[tag=ll.beam] at @s run function limitedlife:curing/beam

#calling remove_batwingsuit
execute as @a[nbt={Inventory:[{id:"minecraft:elytra",tag:{Damage:12,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] at @s in overworld unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}}] at @s in overworld unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
#crafting batwingsuit (Inventory)
execute as @a[scores={ll.craftbatwing=1..}] run give @s minecraft:elytra{Damage:12,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"],display:{Name:"{\"text\":\"Batwing Suit\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={ll.craftbatwing=1..}] run scoreboard players remove @s ll.craftbatwing 1
#calling batwingsuit
execute as @a[nbt={FallFlying:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Damage:12,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] at @s run function limitedlife:items/batwingsuit
execute as @a[tag=ll.batwingflap] at @s run function limitedlife:items/batwingsuit
scoreboard players reset @a ll.batwingflap

##winged arrow
#bow
execute as @a[scores={ll.wa.shoot=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}]}] at @s run function limitedlife:items/winged_arrow_player
execute as @a[scores={ll.wa.shoot=1..},nbt={SelectedItem:{id:"minecraft:bat_spawn_egg",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}] at @s run function limitedlife:items/winged_arrow_player
#crossbow
tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}}] add ll.wa.shootc
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}]}] add ll.wa.shootc
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg"}],SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function limitedlife:items/winged_arrow_load
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run function limitedlife:items/winged_arrow_load
execute as @a[tag=ll.wa.shootc] at @s run function limitedlife:items/winged_arrow_player
#arrow
execute as @e[tag=ll.wa.arrow] at @s run function limitedlife:items/winged_arrow_arrow
scoreboard players reset @a ll.wa.shoot
scoreboard players reset @a ll.wa.shootc
