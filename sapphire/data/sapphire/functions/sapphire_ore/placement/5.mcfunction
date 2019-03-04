execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:redstone_ore run function sapphire:sapphire_ore/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.so.pa.ore=29..35}] sp.so.pa.ore 1
execute if entity @s[scores={sp.so.pa.ore=29..35}] positioned ^ ^ ^1 run function sapphire:sapphire_ore/placement/5
scoreboard players add @s[scores={sp.so.pa.ore=36..}] sp.so.pa.fail 1
scoreboard players reset @s[scores={sp.so.pa.ore=36..}] sp.so.pa.ore
