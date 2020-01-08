#powering corresponding receiver
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
#grant advancement build_success
advancement grant @p[distance=..8] only morsecode:build_success
