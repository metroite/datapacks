#ll.deaths#
execute as @a[limit=1,sort=random] unless score @s ll.deaths >= 0 ll.deaths run function hurtfulpack:compatibility/limitedlife
scoreboard players remove @a[scores={ll.deaths=11..}] ll.deaths 1

#tp to The Void#
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 run function limitedlife:curing/thevoid

#helmet#
execute as @a[nbt=!{Inventory:[{Slot:103b,Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:helmet/helmet
execute as @a[tag=ll.cured] run function limitedlife:helmet/helmet
#players need to be damaged to update to their real health value#
effect give @a[scores={ll.deaths=1..9,ll.health=20,ll.sincedeath=..1000}] minecraft:wither 1 1 true
#Compatibility for keepInventory=true#
tag @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..100}] add ll.cured

#curing item#
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.healingredient
#calling tired#
execute as @e[tag=ll.tired] at @s run function limitedlife:curing/tired

#make sure ll.bat entities die and players should also lose the ll.bat tag#
execute as @e[type=minecraft:bat,tag=ll.bat] at @s unless entity @e[tag=ll.beam,distance=..3] run kill @s
execute as @a[tag=ll.bat] at @s unless entity @e[tag=ll.beam,distance=..5] run tag @s remove ll.bat
#calling curedvoid#
execute unless entity @a[tag=ll.curedvoid] run kill @e[type=minecraft:bat,tag=ll.curedvoid]

#calling remove_batwingsuit#
execute as @a[nbt={Dimension:0,Inventory:[{id:"minecraft:elytra",tag:{CustomModelData:7060,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] at @s unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
execute as @e[type=minecraft:item,nbt={Dimension:0,Item:{id:"minecraft:elytra",tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}}] at @s unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit

#toggling wear status of batwingsuit
tag @a remove ll.batwingwear
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{CustomModelData:7060,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] add ll.batwingwear
