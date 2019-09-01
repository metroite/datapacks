#how long unpresent?
scoreboard players operation @s sv.global -= $global$ sv.global
scoreboard players operation @s sv.global /= $threshold$ sv.global
#remove standing based on the result unless it is equal to -1, also does not decrease below 0
execute if score @s sv.counter matches 1.. run tag @s add sv.over0
execute unless score @s sv.global matches -1 unless score @s sv.counter matches ..0 run scoreboard players operation @s sv.counter += @s sv.global
execute if score @s[tag=sv.over0] sv.counter matches ..1 run scoreboard players set @s sv.counter 0
#equalize score with global as players are present
scoreboard players operation @s sv.global = $global$ sv.global
#remove tag
tag @s remove sv.over0
