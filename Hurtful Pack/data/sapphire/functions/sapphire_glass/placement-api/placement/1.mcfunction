execute if entity @s[scores={sp.glass_placed=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.glass_placed=1..7}] sp.glass_placed 1
execute if entity @s[scores={sp.glass_placed=1..7}] positioned ^ ^ ^1 run function sapphire:sapphire_glass/placement-api/placement/1
execute at @s[scores={sp.glass_placed=8..}] positioned ~ ~1.5 ~ run function sapphire:sapphire_glass/placement-api/placement/2
