#calling sad_orchid/success
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid unless entity @e[type=area_effect_cloud,tag=wt.sad_orchid,distance=..1] unless entity @e[type=area_effect_cloud,tag=wt.sad_orchid,tag=wt.SU.sad_orchid,distance=..3] run function witchtrading:sad_orchid/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s wt.sad_orchid 1
execute as @s[scores={wt.sad_orchid=..14}] at @s unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/placement
