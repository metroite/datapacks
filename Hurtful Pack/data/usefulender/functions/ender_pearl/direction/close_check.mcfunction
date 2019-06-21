scoreboard players remove @s ue.pearlY 1
execute if block ^ ^ ^1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg_success
execute unless block ^ ^ ^1 #usefulender:no_collision_ender_pearl run effect give @s minecraft:resistance 1 4 true
execute unless block ^ ^-1 ^1 #usefulender:no_collision_ender_pearl run effect give @s minecraft:resistance 1 4 true
execute if entity @s[scores={ue.pearlY=1..}] positioned ^ ^ ^1 run function usefulender:ender_pearl/direction/close_check
