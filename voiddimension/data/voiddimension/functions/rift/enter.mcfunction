#end loop
tag @s add vd.tp_done
#get coordinates
execute store result score x vd.coordinates run data get entity @s Pos[0]
execute store result score z vd.coordinates run data get entity @s Pos[2]
#calculate the position in the void (shifting it)
scoreboard players operation x vd.coordinates /= $travel$ vd.coordinates
scoreboard players operation x vd.coordinates += $shift_x$ vd.coordinates
scoreboard players operation z vd.coordinates /= $travel$ vd.coordinates
scoreboard players operation z vd.coordinates += $shift_z$ vd.coordinates
#tp into the end after the shift
tag @s add vd.in_void
gamemode adventure @s[gamemode=survival]
execute in minecraft:the_end run tp 0 288 0
function voiddimension:rift/x_teleport
