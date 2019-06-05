#facing the ll.beam to the ll.bat and particles
scoreboard players add @s ll.cooking 1
particle minecraft:dust 0.8 0.1 0.55 1 ~ ~ ~ 0 0 0 0.001 1 force
teleport @s[tag=ll.beam_l] ^-0.3 ^0.3 ^0.3 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
teleport @s[tag=ll.beam_r] ^0.3 ^0.3 ^0.3 facing entity @e[tag=ll.bat,limit=1,sort=nearest]
execute unless entity @s[scores={ll.cooking=3..}] at @s run function limitedlife:curing/beam
scoreboard players reset @s[scores={ll.cooking=3..}] ll.cooking
#kill close ll.beam
execute if entity @e[tag=ll.bat,distance=..0.75] run kill @s
