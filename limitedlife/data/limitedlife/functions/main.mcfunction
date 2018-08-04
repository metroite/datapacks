scoreboard players add @a[limit=1,sort=random] ll.deaths 0
scoreboard players remove @a[scores={ll.deaths=10..}] ll.deaths 1

#compatibility to graves
function graves:limitedlife

#helmet
execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{Name:"{\"text\":\"Life Support Helmet\",\"color\":\"aqua\",\"italic\":false}"}}}]}] run function limitedlife:helmet
execute as @a[tag=ll.cured] run function limitedlife:helmet

#calling curing
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:dried_kelp",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.heal
execute as @e[tag=ll.heal] at @s positioned ~ ~1 ~ run function limitedlife:curing
#call unmetconditions
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:dried_kelp",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s unless block ~ ~ ~ minecraft:cauldron[level=3] run function limitedlife:unmetconditions
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:dried_kelp",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s positioned ~ ~1 ~ unless entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run function limitedlife:unmetconditions
#ll.blocked should be pickupable
data merge entity @e[tag=ll.blocked,tag=!ll.blockeddone,limit=1,sort=random] {PickupDelay:20,Tags:["ll.blocked","ll.blockeddone"]}
#make sure ll.beam entity dies
execute as @e[type=minecraft:armor_stand,tag=ll.beam] at @s unless entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..64] run kill @s
#tired effect
execute at @e[tag=ll.tired] run particle minecraft:dripping_water ~ ~1 ~ 0.3 0.3 0.3 1 1 normal
scoreboard players add @e[tag=ll.tired] ll.cookingapple 1
execute at @e[tag=ll.tired,scores={ll.cookingapple=9999}] run playsound minecraft:ambient.underwater.exit ambient @a[distance=..32] ~ ~ ~ 0.1 0.5
tag @e[tag=ll.tired,scores={ll.cookingapple=10000..}] remove ll.tired
scoreboard players reset @e[tag=!ll.tired,type=minecraft:end_crystal,scores={ll.cookingapple=1..}] ll.cookingapple
#Bat Wings
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"limitedlife:entities/bat"},limit=1,sort=random,tag=!ll.bat] {DeathLootTable:"limitedlife:entities/bat"}
#remove ll.bat if canceled
execute as @a[tag=ll.bat] at @s at @e[type=minecraft:end_crystal,sort=nearest,limit=1] positioned ~ ~-1 ~ unless entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:dried_kelp",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}},sort=nearest,limit=1,scores={ll.cookingapple=1..}] run tag @s remove ll.bat

#enchant and coloing is not really possible without /modifyitem since you can't change the nbt that easily. Will add it later if I won't forget it
#function limitedlife:enchanting
#function limitedlife:coloring

#players need to be damaged to update to their real health after every death
effect give @a[scores={ll.deaths=1..,ll.health=19..}] minecraft:wither 1 1 true
