#determine
execute if entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run advancement grant @p[distance=..8] only morsecode:build_receiver
execute if entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run advancement grant @p[distance=..8] only morsecode:build_sender
execute if entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run tag @s add mc.receiver
execute if entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run tag @s add mc.sender
#effect
execute if entity @s[tag=mc.sender] run function morsecode:sender
execute if entity @s[tag=mc.receiver] run function morsecode:receiver
