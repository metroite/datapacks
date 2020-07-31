#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:netherrack",Count:1b}}] at @s run function hardstone:blocks/n_rack/replace
#reset score
scoreboard players reset @s hs.n_rack
