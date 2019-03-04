execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #graves:skullmealable run function graves:usebonemeal/success
#repeat if unsuccessful
scoreboard players add @s[scores={g.usebonemeal=22..28}] g.usebonemeal 1
execute if entity @s[scores={g.usebonemeal=22..28}] positioned ^ ^ ^1 run function graves:usebonemeal/placement/4
execute at @s[scores={g.usebonemeal=29..}] positioned ~ ~1.5 ~ run function graves:usebonemeal/placement/5
