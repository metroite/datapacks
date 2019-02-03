#ll.deaths
execute as @a[limit=1,sort=random] unless score @s ll.deaths >= 0 ll.deaths run scoreboard players add @s ll.deaths 1
scoreboard players remove @a[scores={ll.deaths=11..}] ll.deaths 1

#tp to The Void
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 run function limitedlife:curing/thevoid

#feature-compatibility to graves
function graves:limitedlife

##calling functions
#helmet
execute as @a[nbt=!{Inventory:[{Slot:103b,Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:helmet/helmet
execute as @a[tag=ll.cured] run function limitedlife:helmet/helmet
#players need to be damaged to update to their real health value
effect give @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..100}] minecraft:wither 1 1 true
#Compatibility for keepInventory=true
tag @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..100}] add ll.cured

#calling curing
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bat_spawn_egg",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.healingredient
execute as @e[tag=ll.healingredient] at @s positioned ~ ~1 ~ run function limitedlife:curing/curing
#make sure ll.beam entities die
execute as @e[type=minecraft:armor_stand,tag=ll.beam] at @s unless entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..64] run kill @s
#calling curedvoid
execute as @a[tag=ll.curedvoid] at @s run function limitedlife:curing/curedvoid
execute unless entity @a[tag=ll.curedvoid] run kill @e[type=minecraft:bat,tag=ll.curedvoid]
#calling tired
execute as @e[tag=ll.tired] at @s run function limitedlife:curing/tired
scoreboard players reset @e[tag=!ll.tired,type=minecraft:end_crystal,scores={ll.cooking=1..}] ll.cooking
#calling beam
execute as @e[tag=ll.beam] at @s run function limitedlife:curing/beam

#Bat Wings: loottable for all bats
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"limitedlife:entities/bat"},limit=1,sort=random,tag=!ll.bat,tag=!ll.spawnbat] {DeathLootTable:"limitedlife:entities/bat"}

#call (BatWing) Ventilator
execute as @e[tag=ll.fan] at @s run function limitedlife:ventilators/ventilator
execute as @e[tag=ll.collision] at @s run function limitedlife:ventilators/collision/kill
#calls ventilator_placement and spawnbat
execute as @e[type=minecraft:bat,tag=ll.spawnbat] run function limitedlife:ventilators/spawnbat

#calling remove_batwingsuit
execute as @a[nbt={Inventory:[{id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}]}] at @s in overworld unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}}] at @s in overworld unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
#crafting batwingsuit (Inventory)
execute as @a[scores={ll.craftbatwing=1..}] run give @s minecraft:elytra{Damage:232s,Unbreakable:1b,HideFlags:16,RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],display:{Name:"{\"text\":\"Bat Wingsuit\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={ll.craftbatwing=1..}] run scoreboard players remove @s ll.craftbatwing 1
#calling batwingsuit
execute as @a[nbt={FallFlying:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{HideFlags:16,RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}]}] at @s run function limitedlife:items/batwingsuit
scoreboard players reset @a ll.batwingflap
