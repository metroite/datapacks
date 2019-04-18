##calls success (for dragon_egg tp or ender_pearl nodmg) at direction of motion
execute if entity @s[tag=!ue.calulated] run function usefulender:ender_pearl/direction/calculate
#if too close to block
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes if block ^ ^ ^1 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes if block ^ ^ ^2 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes if block ^ ^ ^3 minecraft:dragon_egg run function usefulender:ender_pearl/dragon_egg
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes unless block ^ ^ ^1 #usefulender:nocollision run function usefulender:ender_pearl/success
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes unless block ^ ^ ^2 #usefulender:nocollision run function usefulender:ender_pearl/success
execute as @p[scores={ue.pearlthrow=1..},distance=..2] at @s anchored eyes unless block ^ ^ ^3 #usefulender:nocollision run function usefulender:ender_pearl/success
