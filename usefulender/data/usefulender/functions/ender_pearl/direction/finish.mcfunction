#begin of motion and calculated end of motion are marked with AOECs and can now calculate blocks in front in success.mcfunction
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:1,WaitTime:-2147483648,Tags:["ue.motion_end"]}
#taking curvage into account
execute if entity @s[tag=ue.motion_high] run tag @e[tag=ue.motion,distance=..2,limit=1,sort=nearest] add ue.motion_high
execute if entity @s[tag=ue.motion_low] run tag @e[tag=ue.motion,distance=..2,limit=1,sort=nearest] add ue.motion_low
tag @s remove ue.motion_high
tag @s remove ue.motion_low
#vectoring the two loactions and running a function
execute at @s as @e[tag=ue.motion,distance=..2,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[tag=ue.motion_end,distance=0.5..6,limit=1,sort=nearest]
execute at @s as @e[tag=ue.motion,distance=..2,limit=1,sort=nearest] at @s run function usefulender:ender_pearl/direction/success
