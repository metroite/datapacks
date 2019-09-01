#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^ ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^ ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^-0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^-0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^-0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.so.pa.ore=8..14}] sp.so.pa.ore 1
execute if entity @s[scores={sp.so.pa.ore=8..14}] positioned ^ ^ ^1 run function sapphire:sapphire_ore/placement/2
execute at @s[scores={sp.so.pa.ore=15..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_ore/placement/3
