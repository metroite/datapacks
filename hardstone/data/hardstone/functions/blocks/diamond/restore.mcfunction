#restore (only if "minedia" inactive)
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:cobblestone",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:cobblestone",Count:1b}}] at @s run data merge entity @s {Item:{id:"minecraft:diamond",Count:1b}}
#reset score
scoreboard players reset @s hs.diamond
