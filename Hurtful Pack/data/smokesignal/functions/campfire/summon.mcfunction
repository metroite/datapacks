summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:0b,Tags:["ss.smokesignal"],Invisible:1b}
execute as @e[sort=nearest,limit=1,tag=ss.smokesignal,distance=..8] run function smokesignal:campfire/calc
kill @s
