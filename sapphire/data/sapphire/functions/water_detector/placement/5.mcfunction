execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:observer run function sapphire:water_detector/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.wd.pa.detec=29..35}] sp.wd.pa.detec 1
execute if entity @s[scores={sp.wd.pa.detec=29..35}] positioned ^ ^ ^1 run function sapphire:water_detector/placement/5
scoreboard players add @s[scores={sp.wd.pa.detec=36..}] sp.wd.pa.fail 1
tellraw @s[scores={sp.wd.pa.detec=36..}] ["",{"text":"error#4:","bold":true,"color":"red","hoverEvent":{"action":"show_text","value":"sapphire\\water_detector\\placement-API"}},{"text":" failed to detect "},{"text":"observer","italic":true,"color":"aqua"},{"text":", approach to any unmodified, dropped "},{"text":"observer","italic":true,"color":"aqua"},{"text":" item to recover your custom block."}]
scoreboard players reset @s[scores={sp.wd.pa.detec=36..}] sp.wd.pa.detec
