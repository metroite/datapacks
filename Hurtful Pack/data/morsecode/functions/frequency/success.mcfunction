#powering corresponding receiver
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1,east=side,north=side,south=side,west=side] replace minecraft:redstone_wire[power=0]
#unpower redstone_wire afterwards
tag @s add mc.powered
schedule function morsecode:device/receiver/unpower 1t
#grant advancement build_success
advancement grant @p[distance=..8] only morsecode:build_success
