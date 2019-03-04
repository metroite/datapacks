execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^ ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^ ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^-0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^-0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^-0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #sapphire:redstone_torch run function sapphire:lightning_rod/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.lr.pa.torch=8..14}] sp.lr.pa.torch 1
execute if entity @s[scores={sp.lr.pa.torch=8..14}] positioned ^ ^ ^1 run function sapphire:lightning_rod/placement/2
execute at @s[scores={sp.lr.pa.torch=15..}] positioned ~ ~1.5 ~ run function sapphire:lightning_rod/placement/3
