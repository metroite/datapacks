#get village center
execute store result score @s sv.center_x run data get entity @s Brain.memories."minecraft:meeting_point".pos.[0]
execute store result score @s sv.center_y run data get entity @s Brain.memories."minecraft:meeting_point".pos.[1]
execute store result score @s sv.center_z run data get entity @s Brain.memories."minecraft:meeting_point".pos.[2]
#stop loop
execute unless score @s sv.center_x matches 0 unless score @s sv.center_y matches 0 unless score @s sv.center_z matches 0 run function smartvillage:village/common/center_known
