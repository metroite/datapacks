scoreboard players remove @s ue.pearlY 1
execute if block ^ ^ ^-1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute unless block ^ ^ ^-1 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless block ^ ^-1 ^-1 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless block ^ ^-2 ^-1 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute if entity @s[scores={ue.pearlY=1..},tag=!ue.motion_low] positioned ^ ^ ^-1 run function usefulender:ender_pearl/direction/check
execute if entity @s[scores={ue.pearlY=1..},tag=ue.motion_low] positioned ^ ^-0.1 ^-1 run function usefulender:ender_pearl/direction/check
tag @s remove ue.motion_low
