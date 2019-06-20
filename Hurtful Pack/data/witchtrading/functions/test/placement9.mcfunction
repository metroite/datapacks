execute if entity @s[scores={test=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
#repeat if unsuccessful
scoreboard players add @s[scores={test=29..35}] test 1
execute if entity @s[scores={test=29..35}] positioned ^ ^ ^1 run function witchtrading:test/placement9
execute if entity @s[scores={test=36..}] run tellraw @s[scores={test=36..}] ["",{"text":"unsuccessful","color":"red","bold":"true"}]
scoreboard players reset @s[scores={test=36..}] test
