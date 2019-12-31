#add
execute if entity @s[tag=mc.sender] run function morsecode:rotation
#Powers every redstone_wire with same ItemRotation (sender)
execute if entity @s[tag=mc.sender] if block ~ ~ ~ minecraft:stone_button[powered=true] run function morsecode:effect
