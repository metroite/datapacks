#if too close to block
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes run function usefulender:ender_pearl/direction/close
#mark begin location of calculation
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["ue.motion"]}
#data get Motion
execute store result score @s ue.pearlX run data get entity @s Motion[0] 1000000
execute store result score @s ue.pearlY run data get entity @s Motion[1] 1000000
execute store result score @s ue.pearlZ run data get entity @s Motion[2] 1000000
#recursive
function usefulender:ender_pearl/direction/x
