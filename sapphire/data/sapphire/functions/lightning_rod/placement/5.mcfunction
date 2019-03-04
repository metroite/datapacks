execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.lr.pa.torch=29..35}] sp.lr.pa.torch 1
execute if entity @s[scores={sp.lr.pa.torch=29..35}] positioned ^ ^ ^1 run function sapphire:lightning_rod/placement/5
scoreboard players add @s[scores={sp.lr.pa.torch=36..}] sp.lr.pa.fail 1
scoreboard players reset @s[scores={sp.lr.pa.torch=36..}] sp.lr.pa.torch
