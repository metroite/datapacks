#facing the ll.beam to the ll.bat and particles
execute at @s run particle minecraft:dust 0.8 0.1 0.55 1 ~ ~ ~ 0 0 0 0.001 1 force
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:dried_kelp",tag:{CanPlaceOn:["minecraft:void_air"]}}}] at @s run teleport @s ^ ^ ^0.1 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=4..] run teleport @s ^ ^ ^0.2 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=8..] run teleport @s ^ ^ ^0.3 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=16..] run teleport @s ^ ^ ^0.5 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute if entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=32..] run teleport @s ^ ^ ^1 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
