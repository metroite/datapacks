###ue.motion_<high/low> is for calculation of the curvage (this function could be more dynamic with scores like $distance$ in ue.pearlthrow -> if this is implemented, rename this function into check and get rid of close and use this instead)
##Debugging
#execute if entity @s[tag=ue.motion_low] run say low
#execute if entity @s[tag=ue.motion_high] run say high
#
#particle barrier ^ ^ ^1 0.1 0.1 0.1 1 1 force
#particle barrier ^ ^ ^2 0.1 0.1 0.1 1 1 force
#particle barrier ^ ^ ^3 0.1 0.1 0.1 1 1 force
#particle barrier ^ ^ ^4 0.1 0.1 0.1 1 1 force
#particle barrier ^ ^ ^5 0.1 0.1 0.1 1 1 force
#execute unless entity @s[tag=ue.motion_high] unless entity @s[tag=ue.motion_low] run particle barrier ^ ^ ^6 0.1 0.1 0.1 1 1 force
#execute if entity @s[tag=ue.motion_low] run particle barrier ^ ^-1 ^6 0.1 0.1 0.1 1 1 force
#execute if entity @s[tag=ue.motion_high] run particle barrier ^ ^1 ^6 0.1 0.1 0.1 1 1 force
#execute unless entity @s[tag=ue.motion_high] unless entity @s[tag=ue.motion_low] run particle barrier ^ ^ ^7 0.1 0.1 0.1 1 1 force
#execute if entity @s[tag=ue.motion_low] run particle barrier ^ ^-1 ^7 0.1 0.1 0.1 1 1 force
#execute if entity @s[tag=ue.motion_high] run particle barrier ^ ^1 ^7 0.1 0.1 0.1 1 1 force
execute if block ^ ^ ^1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ^ ^ ^2 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ^ ^ ^3 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ^ ^ ^4 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if block ^ ^ ^5 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute unless entity @s[tag=ue.motion_high] unless entity @s[tag=ue.motion_low] if block ^ ^ ^6 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if entity @s[tag=ue.motion_low] if block ^ ^-1 ^6 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if entity @s[tag=ue.motion_high] if block ^ ^1 ^6 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute unless entity @s[tag=ue.motion_high] unless entity @s[tag=ue.motion_low] if block ^ ^ ^7 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if entity @s[tag=ue.motion_low] if block ^ ^-1 ^7 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute if entity @s[tag=ue.motion_high] if block ^ ^1 ^7 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute unless block ^ ^ ^1 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless block ^ ^ ^2 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless block ^ ^ ^3 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless block ^ ^ ^4 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless block ^ ^ ^5 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless entity @s[tag=ue.motion_high] unless entity @s[tag=ue.motion_low] if block ^ ^ ^6 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute if entity @s[tag=ue.motion_low] if block ^ ^-1 ^6 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute if entity @s[tag=ue.motion_high] if block ^ ^1 ^6 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute unless entity @s[tag=ue.motion_high] unless entity @s[tag=ue.motion_low] if block ^ ^ ^7 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute if entity @s[tag=ue.motion_low] if block ^ ^-1 ^7 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute if entity @s[tag=ue.motion_high] if block ^ ^1 ^7 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
