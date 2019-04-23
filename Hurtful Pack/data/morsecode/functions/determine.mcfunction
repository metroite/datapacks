#add
execute as @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run advancement grant @p[distance=..8] only morsecode:build_receiver
execute as @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run advancement grant @p[distance=..8] only morsecode:build_sender
execute as @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:iron_block if block ~ ~ ~ minecraft:redstone_wire run tag @s add mc.receiver
execute as @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}},tag=!mc.sender,tag=!mc.receiver] if block ~ ~-1 ~ minecraft:gold_block if block ~ ~ ~ minecraft:stone_button run tag @s add mc.sender
#remove
execute as @s[tag=mc.receiver] unless block ~ ~-1 ~ minecraft:iron_block run tag @s remove mc.receiver
execute as @s[tag=mc.receiver] unless block ~ ~ ~ minecraft:redstone_wire run tag @s remove mc.receiver
execute as @s[tag=mc.receiver] unless entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] run tag @s remove mc.receiver
execute as @s[tag=mc.sender] unless block ~ ~-1 ~ minecraft:gold_block run tag @s remove mc.sender
execute as @s[tag=mc.sender] unless block ~ ~ ~ minecraft:stone_button run tag @s remove mc.sender
execute as @s[tag=mc.sender] unless entity @s[nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] run tag @s remove mc.sender
