execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^ ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^ ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^-0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^-0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^-0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
#repeat if unsuccessful
scoreboard players add @s[scores={wt.sad_orchid=8..14}] wt.sad_orchid 1
execute if entity @s[scores={wt.sad_orchid=8..14}] positioned ^ ^ ^1 run function witchtrading:sad_orchid/placement/2
execute at @s[scores={wt.sad_orchid=15..}] positioned ~ ~1.5 ~ run function witchtrading:sad_orchid/placement/3
