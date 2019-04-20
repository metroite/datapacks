#get uuid of thrower
execute unless entity @s[scores={ue.uuid=1..}] store result score @s ue.uuid run scoreboard players get @p[scores={ue.uuid=1..},distance=..48] ue.uuid
##calls success (for dragon_egg tp or ender_pearl nodmg) at direction of motion
execute if entity @s[tag=!ue.calulated] run function usefulender:ender_pearl/direction/calculate
#if too close to block
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes if block ^ ^ ^1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes if block ^ ^ ^2 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes if block ^ ^ ^3 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes unless block ^ ^ ^1 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes unless block ^ ^ ^2 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes unless block ^ ^ ^3 #usefulender:no_collision_ender_pearl run function usefulender:ender_pearl/success
