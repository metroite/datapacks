summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
execute as @e[sort=nearest,limit=1,tag=sf.signalfire,distance=..8] run function signalfire:campfire/calc
kill @s
