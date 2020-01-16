#effects for sender and receiver, also determine rotation (frequency)
execute as @e[type=minecraft:item_frame,tag=mc.sender] at @s run function morsecode:device/sender/tick
