execute if entity @s[scores={to.campfire=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.campfire=22..28}] to.campfire 1
execute if entity @s[scores={to.campfire=22..28}] positioned ^ ^ ^1 run function torchout:placement-api_campfire/detection/4
execute at @s[scores={to.campfire=29..}] positioned ~ ~1.5 ~ run function torchout:placement-api_campfire/detection/5
