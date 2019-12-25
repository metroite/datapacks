#begin of motion and calculated end of motion are marked with and can now calculate blocks in front in check.mcfunction (usefulender is broken, uuid system doesnt appply on AOECs)
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["ue.motion"]}
#vectoring the two loactions and running a function
execute at @e[type=minecraft:area_effect_cloud,tag=ue.motion,distance=..12,limit=1,sort=nearest] run tp @e[type=minecraft:area_effect_cloud,tag=ue.motion,distance=..12,limit=1,sort=nearest] ~ ~ ~ facing entity @s
scoreboard players operation @s ue.pearlY = $distance$ ue.pearlthrow
execute as @e[type=minecraft:area_effect_cloud,tag=ue.motion,distance=..12,limit=1,sort=nearest] store result score @s ue.pearlZ run data get entity @s Rotation[1]
execute at @e[type=minecraft:area_effect_cloud,tag=ue.motion,distance=..12,limit=1,sort=nearest] run function usefulender:ender_pearl/direction/check
