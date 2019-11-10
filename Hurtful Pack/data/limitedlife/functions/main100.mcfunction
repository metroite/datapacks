#tp to The Void#
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 run function limitedlife:curing/void/thevoid

#curing item#
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.healingredient

#toggling wear status of batwingsuit#
tag @a remove ll.batwingwear
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{CustomModelData:7060,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] add ll.batwingwear
