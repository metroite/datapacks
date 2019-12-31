#if too close to block
scoreboard players operation @p[distance=..5] ue.pearlY = $distance$ ue.pearlthrow
execute as @p[distance=..5] at @s positioned ~ ~1.5 ~ run function usefulender:ender_pearl/direction/close_check
#data get Motion
execute store result score @s ue.pearlX run data get entity @s Motion[0] 1000000
execute store result score @s ue.pearlY run data get entity @s Motion[1] 1000000
execute store result score @s ue.pearlZ run data get entity @s Motion[2] 1000000
#recursive
function usefulender:ender_pearl/direction/x
