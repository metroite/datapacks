#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:netherrack",Count:1b}}] at @s run function hardstone:netherrack/replace
#reset score
scoreboard players reset @s hs.minerack
