#end loop
tag @s add vd.tp_done
#get coordinates
execute store result score x vd.coordinates run data get entity @s Pos[0]
execute store result score y vd.coordinates run data get entity @s Pos[1]
execute store result score z vd.coordinates run data get entity @s Pos[2]
#calculate the position in the void (shifting it)
scoreboard players operation x vd.coordinates += $shift$ vd.coordinates
scoreboard players operation x vd.coordinates /= $travel$ vd.coordinates
scoreboard players operation x_temp vd.coordinates = x vd.coordinates
scoreboard players operation z vd.coordinates -= $shift$ vd.coordinates
scoreboard players operation z vd.coordinates /= $travel$ vd.coordinates
scoreboard players operation z_temp vd.coordinates = z vd.coordinates
#tp into the end after the shift
execute in minecraft:the_end run tp 0 100 0
function voiddimension:rift/x_teleport
