#Powers every redstone_wire (receiver) with same ItemRotation
execute if block ~ ~ ~ minecraft:stone_button[powered=true] run function morsecode:frequency/send_button
execute if score $wirelessredstone$ mc.itemrotation matches 1.. if block ~ ~ ~ minecraft:redstone_wire[power=15] run function morsecode:frequency/send_redstone
