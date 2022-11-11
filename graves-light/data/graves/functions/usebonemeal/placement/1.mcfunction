execute if entity @s[scores={g.usebonemeal=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
#repeat if unsuccessful
scoreboard players add @s[scores={g.usebonemeal=1..7}] g.usebonemeal 1
execute if entity @s[scores={g.usebonemeal=1..7}] positioned ^ ^ ^1 run function graves:usebonemeal/placement/1
execute at @s[scores={g.usebonemeal=8..}] positioned ~ ~1.5 ~ run function graves:usebonemeal/placement/2
