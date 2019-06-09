summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["sf.signalfire"],Invisible:1b}
scoreboard players operation @e[sort=nearest,limit=1,tag=sf.signalfire,distance=..16] sf.counter = $global$ sf.counter
scoreboard players operation @e[sort=nearest,limit=1,tag=sf.signalfire,distance=..16] sf.counter += $duration$ sf.counter
kill @s
