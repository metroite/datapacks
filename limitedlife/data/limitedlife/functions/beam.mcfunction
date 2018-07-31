#facing the ll.beam to the ll.bat and particles
execute at @s run particle minecraft:dust 0.8 0.1 0.55 1 ~ ~ ~ 0 0 0 0.001 1 force
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest] at @s run teleport @s ^ ^ ^0.1 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=4..] at @s run teleport @s ^ ^ ^0.15 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=8..] at @s run teleport @s ^ ^ ^0.2 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=16..] at @s run teleport @s ^ ^ ^0.25 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=32..] at @s run teleport @s ^ ^ ^0.5 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
