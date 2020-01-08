#add tag: sender or receiver
execute if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run function morsecode:device/receiver/initial
execute if entity @s[tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button[face=floor] run function morsecode:device/sender/initial
execute if score $wirelessredstone$ mc.itemrotation matches 1.. if entity @s[tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:redstone_wire run function morsecode:device/sender/initial
