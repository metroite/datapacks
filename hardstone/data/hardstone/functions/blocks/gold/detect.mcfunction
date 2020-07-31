#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt={Age:0s,Item:{id:"minecraft:command_block"}}] at @s run function hardstone:blocks/gold/replace
#reset score
scoreboard players reset @s hs.gold
