execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
#repeat if unsuccessful
scoreboard players add @s[scores={g.usebonemeal=29..35}] g.usebonemeal 1
execute if entity @s[scores={g.usebonemeal=29..35}] positioned ^ ^ ^1 run function graves:usebonemeal/placement/5
scoreboard players reset @s[scores={g.usebonemeal=36..}] g.usebonemeal
