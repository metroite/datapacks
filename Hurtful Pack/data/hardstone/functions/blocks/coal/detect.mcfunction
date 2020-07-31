#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:coal"}}] at @s run function hardstone:blocks/coal/replace
#reset score
scoreboard players reset @s hs.coal
