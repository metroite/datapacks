#facing the ll.beam to the ll.bat and particles
particle minecraft:dust 0.8 0.1 0.55 1 ~ ~ ~ 0 0 0 0.001 1 force
teleport @s ^ ^ ^0.75 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
#kill ll.beam
execute if entity @e[tag=ll.bat,distance=..1] run kill @s
