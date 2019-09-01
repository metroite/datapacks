playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 2
particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.01 10 normal
scoreboard players reset @s hp.packed_ice
scoreboard players reset @s hp.blue_ice
scoreboard players reset @s hp.ice_block
fill ~ ~ ~ ~ ~ ~ minecraft:air replace #minecraft:ice
