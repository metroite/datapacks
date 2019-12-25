#effects for sender and receiver
execute as @e[type=minecraft:item_frame,tag=mc.sender] at @s run function morsecode:sender
execute as @e[type=minecraft:item_frame,tag=mc.receiver] at @s run function morsecode:receiver
