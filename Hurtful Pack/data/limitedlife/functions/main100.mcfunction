#re-schedule
execute if score $limitedlife$ hp.storeboard matches 1.. run schedule function limitedlife:main100 100t

#tp to The Void#
execute as @a[scores={ll.deaths=10}] positioned 0 1 -30 run function limitedlife:curing/void/thevoid

#curing item#
execute as @e[type=minecraft:item,tag=!ll.healingredient,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..0.05,tag=!ll.tired] run tag @s add ll.healingredient
#end crystal items in cauldron summon end crystal entity ontop
execute as @e[type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:end_crystal"}}] at @s if block ~ ~ ~ minecraft:cauldron align xyz positioned ~0.5 ~1 ~0.5 unless entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..0.05] run function limitedlife:curing/summon_crystal
#feature-compatibility: graves
#function graves:limitedlife (no need in hurtfulpack)

#toggling wear status of batwingsuit#
tag @a remove ll.batwingwear
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{CustomModelData:7060}}]}] add ll.batwingwear
