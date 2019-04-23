execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^ ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^ ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^-0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^-0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^-0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
#repeat if unsuccessful
scoreboard players add @s[scores={g.usebonemeal=8..14}] g.usebonemeal 1
execute if entity @s[scores={g.usebonemeal=8..14}] positioned ^ ^ ^1 run function graves:usebonemeal/placement/2
execute at @s[scores={g.usebonemeal=15..}] positioned ~ ~1.5 ~ run function graves:usebonemeal/placement/3
