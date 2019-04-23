execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^ ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^ ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^1 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-1 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^1 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-1 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^1 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-1 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^0.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-0.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^0.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-0.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^1 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-1 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^1 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^-1 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.so.pa.ore=15..21}] sp.so.pa.ore 1
execute if entity @s[scores={sp.so.pa.ore=15..21}] positioned ^ ^ ^1 run function sapphire:sapphire_ore/placement/3
execute at @s[scores={sp.so.pa.ore=22..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_ore/placement/4
