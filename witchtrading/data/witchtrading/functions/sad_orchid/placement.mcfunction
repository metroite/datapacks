#calling sad_orchid/success
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s wt.sad_orchid 1
execute as @s[scores={wt.sad_orchid=..14}] at @s unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/placement