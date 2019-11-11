#facing the ll.beam to the ll.bat and particles
particle minecraft:dust 0.8 0.1 0.55 1 ~ ~ ~ 0 0 0 0.001 1 force
teleport @s[tag=ll.beam_l] ^-0.35 ^0.35 ^0.35 facing entity @e[distance=..64,tag=ll.bat,limit=1,sort=nearest]
teleport @s[tag=ll.beam_r] ^0.35 ^0.35 ^0.35 facing entity @e[distance=..64,tag=ll.bat,limit=1,sort=nearest]
#kill close ll.beam
execute if entity @e[distance=..0.75,tag=ll.bat] run kill @s
