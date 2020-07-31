#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:gold_nugget"}}] at @s run function hardstone:blocks/n_gold/replace
#reset score
scoreboard players reset @s hs.n_gold
