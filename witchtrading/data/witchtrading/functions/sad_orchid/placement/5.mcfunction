execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:blue_orchid run function witchtrading:sad_orchid/success
#repeat if unsuccessful
scoreboard players add @s[scores={wt.sad_orchid=29..35}] wt.sad_orchid 1
execute if entity @s[scores={wt.sad_orchid=29..35}] positioned ^ ^ ^1 run function witchtrading:sad_orchid/placement/5
scoreboard players add @s[scores={wt.sad_orchid=36..}] wt.so.pa.fail 1
tellraw @s[scores={wt.sad_orchid=36..}] ["",{"text":"error#5:","bold":true,"color":"red","hoverEvent":{"action":"show_text","value":"witchtrading\\sad_orchid\\placement-API"}},{"text":" failed to detect "},{"text":"blue_orchid","italic":true,"color":"aqua"},{"text":", approach to any unmodified, dropped "},{"text":"blue_orchid","italic":true,"color":"aqua"},{"text":" item to recover your custom block."}]
scoreboard players reset @s[scores={wt.sad_orchid=36..}] wt.sad_orchid
