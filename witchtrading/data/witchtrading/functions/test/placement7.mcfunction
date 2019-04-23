execute if entity @s[scores={test=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
#repeat if unsuccessful
scoreboard players add @s[scores={test=22..28}] test 1
execute if entity @s[scores={test=22..28}] positioned ^ ^ ^1 run function witchtrading:test/placement7
execute at @s[scores={test=29..}] positioned ~ ~1.5 ~ run function witchtrading:test/placement9
