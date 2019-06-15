#add
execute if entity @s[tag=mc.sender] run function morsecode:rotation
#remove
execute if entity @s[tag=mc.sender] unless block ~ ~-1 ~ minecraft:gold_block run tag @s remove mc.sender
execute if entity @s[tag=mc.sender] unless block ~ ~ ~ minecraft:stone_button run tag @s remove mc.sender
execute if entity @s[tag=mc.sender] unless entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] run tag @s remove mc.sender
#Powers every redstone_wire with same ItemRotation (sender)
execute if entity @s[tag=mc.sender] if block ~ ~ ~ minecraft:stone_button[powered=true] run function morsecode:effect
