#add
execute if entity @s[tag=mc.receiver] run function morsecode:rotation
#remove
execute if entity @s[tag=mc.receiver] unless block ~ ~-1 ~ minecraft:iron_block run tag @s remove mc.receiver
execute if entity @s[tag=mc.receiver] unless block ~ ~ ~ minecraft:redstone_wire run tag @s remove mc.receiver
execute if entity @s[tag=mc.receiver] unless entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] run tag @s remove mc.receiver
#Receiver blocks ongoing redstone power
execute if entity @s[tag=mc.receiver] if block ~ ~ ~ minecraft:redstone_wire[power=1] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=0] replace minecraft:redstone_wire[power=1]
