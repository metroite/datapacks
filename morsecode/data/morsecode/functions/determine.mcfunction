#add
execute as @s[tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run tag @s add mc.receiver
execute as @s[tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run tag @s add mc.sender
#remove
execute as @s[tag=mc.receiver] unless block ~ ~-1 ~ minecraft:iron_block unless block ~ ~ ~ minecraft:redstone_wire run tag @s remove mc.receiver
execute as @s[tag=mc.sender] unless block ~ ~-1 ~ minecraft:gold_block unless block ~ ~ ~ minecraft:stone_button run tag @s remove mc.sender
