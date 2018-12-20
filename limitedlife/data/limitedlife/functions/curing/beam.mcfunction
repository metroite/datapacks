#facing the ll.beam to the ll.bat and particles
particle minecraft:dust 0.8 0.1 0.55 1 ~ ~ ~ 0 0 0 0.001 1 force
teleport @s[tag=ll.beam_l] ^-0.9 ^0.9 ^0.85 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
teleport @s[tag=ll.beam_r] ^0.9 ^0.9 ^0.85 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
#kill close ll.beam
execute as @s[tag=ll.beam_r] if entity @e[tag=ll.bat,distance=..2] run kill @s
