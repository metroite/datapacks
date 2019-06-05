execute if entity @s[scores={to.campfire=15..21}] positioned ^ ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^ ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^1 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-1 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^1 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-1 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^1 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-1 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^0.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-0.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^0.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-0.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^1 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-1 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^1 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=15..21}] positioned ^-1 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.campfire=15..21}] to.campfire 1
execute if entity @s[scores={to.campfire=15..21}] positioned ^ ^ ^1 run function torchout:placement-api_campfire/detection/3
execute at @s[scores={to.campfire=22..}] positioned ~ ~1.5 ~ run function torchout:placement-api_campfire/detection/4
