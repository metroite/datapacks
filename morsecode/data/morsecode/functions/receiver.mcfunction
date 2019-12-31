#add
execute if entity @s[tag=mc.receiver] run function morsecode:rotation
#Receiver blocks ongoing redstone power
execute if entity @s[tag=mc.receiver] if block ~ ~ ~ minecraft:redstone_wire[power=1] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=0] replace minecraft:redstone_wire[power=1]
