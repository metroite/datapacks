#determine
execute if entity @s[tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run function morsecode:receiver_initial
execute if entity @s[tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run function morsecode:sender_initial
tag @s remove mc.receiver
tag @s remove mc.sender
execute if entity @s if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run tag @s add mc.receiver
execute if entity @s[tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run tag @s add mc.sender
