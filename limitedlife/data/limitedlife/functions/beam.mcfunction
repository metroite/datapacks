#facing the ll.beam to the ll.bat and particles
execute at @s run particle minecraft:dust 0.8 0.1 0.55 2 ~ ~ ~ 0 0 0 0.001 1 force
execute at @s run teleport @s ~ ~ ~ facing entity @e[tag=ll.bat,limit=1,sort=nearest]
#tp the ll.beam to ll.bat
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run tp @s ^ ^ ^0.1
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=2..] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run tp @s ^ ^ ^0.1
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=4..] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run tp @s ^ ^ ^0.1
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=8..] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run tp @s ^ ^ ^0.1
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=16..] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run tp @s ^ ^ ^0.1
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=32..] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run tp @s ^ ^ ^0.1
#kill the ll.beam if reached
execute at @s if entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..1] run kill @s
