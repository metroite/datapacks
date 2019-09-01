execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:lapis_ore run function sapphire:sapphire_ore/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.so.pa.ore=22..28}] sp.so.pa.ore 1
execute if entity @s[scores={sp.so.pa.ore=22..28}] positioned ^ ^ ^1 run function sapphire:sapphire_ore/placement/4
execute at @s[scores={sp.so.pa.ore=29..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_ore/placement/5
