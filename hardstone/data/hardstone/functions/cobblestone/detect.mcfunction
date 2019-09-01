#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:cobblestone",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:cobblestone",Count:1b}}] at @s run function hardstone:cobblestone/replace
#diamond poof effect
execute if entity @s[scores={hs.minedia=1..}] as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:cobblestone_slab",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:cobblestone_slab",Count:1b}}] at @s run function hardstone:cobblestone/diamond
#reset score
scoreboard players reset @s hs.minecobble
scoreboard players reset @s hs.minedia
