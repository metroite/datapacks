#replaces the use of "Bat Wings" with "Skull Dust"
data merge entity @e[type=minecraft:item,limit=1,sort=random,nbt={Item:{Count:1b,id:"minecraft:dried_kelp",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] {Item:{Count:1b,id:"minecraft:dried_kelp",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CanPlaceOn:["minecraft:void_air"]}}}

#calling curing
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] positioned ~ ~1 ~ if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run tag @s add ll.heal
execute as @e[tag=ll.heal] at @s positioned ~ ~1 ~ run function limitedlife:curing

#call unmetconditions
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s unless block ~ ~ ~ minecraft:cauldron[level=3] run function limitedlife:unmetconditions
execute as @e[type=minecraft:item,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"]}}}] at @s positioned ~ ~1 ~ unless entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run function limitedlife:unmetconditions
