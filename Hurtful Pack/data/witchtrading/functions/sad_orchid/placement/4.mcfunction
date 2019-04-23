execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
#repeat if unsuccessful
scoreboard players add @s[scores={wt.sad_orchid=22..28}] wt.sad_orchid 1
execute if entity @s[scores={wt.sad_orchid=22..28}] positioned ^ ^ ^1 run function witchtrading:sad_orchid/placement/4
execute at @s[scores={wt.sad_orchid=29..}] positioned ~ ~1.5 ~ run function witchtrading:sad_orchid/placement/5
