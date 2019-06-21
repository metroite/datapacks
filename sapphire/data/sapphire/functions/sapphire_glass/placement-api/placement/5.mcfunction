execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:light_blue_stained_glass run function sapphire:sapphire_glass/placement-api/success
#repeat if unsuccessful
scoreboard players add @s[scores={sp.glass_placed=29..35}] sp.glass_placed 1
execute if entity @s[scores={sp.glass_placed=29..35}] positioned ^ ^ ^1 run function sapphire:sapphire_glass/placement-api/placement/5
scoreboard players add @s[scores={sp.glass_placed=36..}] sp.sg.pa.fail 1
tellraw @s[scores={sp.glass_placed=36..}] ["",{"text":"error#1:","bold":true,"color":"red","hoverEvent":{"action":"show_text","value":"sapphire\\sapphire_glass\\placement-API"}},{"text":" failed to detect "},{"text":"light_blue_stained_glass","italic":true,"color":"aqua"},{"text":", approach to any unmodified, dropped "},{"text":"light_blue_stained_glass","italic":true,"color":"aqua"},{"text":" item to recover your custom block."}]
scoreboard players reset @s[scores={sp.glass_placed=36..}] sp.glass_placed
