#unpowering corresponding receiver
execute at @e[tag=mc.powered] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=0] replace minecraft:redstone_wire
tag @e remove mc.powered
