execute if entity @s[scores={sp.wd.pa.detec=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.wd.pa.detec=1..7}] sp.wd.pa.detec 1
execute if entity @s[scores={sp.wd.pa.detec=1..7}] positioned ^ ^ ^1 run function sapphire:water_detector/placement/1
execute at @s[scores={sp.wd.pa.detec=8..}] positioned ~ ~1.5 ~ run function sapphire:water_detector/placement/2
