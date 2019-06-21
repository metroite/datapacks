execute if entity @s[scores={to.campfire=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.campfire=29..35}] to.campfire 1
execute if entity @s[scores={to.campfire=29..35}] positioned ^ ^ ^1 run function torchout:placement-api_campfire/detection/5
execute if entity @s[scores={to.campfire=36..}] run function torchout:placement-api_campfire/detection/fail
