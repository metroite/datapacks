execute if entity @s[scores={sp.so.pa.ore=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.so.pa.ore=1..7}] sp.so.pa.ore 1
execute if entity @s[scores={sp.so.pa.ore=1..7}] positioned ^ ^ ^1 run function sapphire:sapphire_ore/placement/1
execute at @s[scores={sp.so.pa.ore=8..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_ore/placement/2
