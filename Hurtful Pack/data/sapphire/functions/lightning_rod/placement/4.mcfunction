execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.lr.pa.torch=22..28}] sp.lr.pa.torch 1
execute if entity @s[scores={sp.lr.pa.torch=22..28}] positioned ^ ^ ^1 run function sapphire:lightning_rod/placement/4
execute at @s[scores={sp.lr.pa.torch=29..}] positioned ~ ~1.5 ~ run function sapphire:lightning_rod/placement/5
