#replaces the use of "Batwing" with "Skull Dust"
tag @e[type=minecraft:item,tag=ll.healingredient,tag=!ll.blocked,limit=1,sort=random,nbt={Item:{Count:1b,id:"minecraft:bat_spawn_egg",tag:{HideFlags:17,CanPlaceOn:["minecraft:void_air"]}}}] add ll.blocked
#calling curing
execute as @e[type=minecraft:item,tag=!ll.healingredient,tag=!ll.blocked,nbt={Item:{Count:1b,id:"minecraft:bone_meal",tag:{HideFlags:17,CanPlaceOn:["minecraft:void_air"]}}}] at @s if block ~ ~ ~ minecraft:cauldron[level=3] align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..0.05,tag=!ll.tired] run tag @s add ll.healingredient
