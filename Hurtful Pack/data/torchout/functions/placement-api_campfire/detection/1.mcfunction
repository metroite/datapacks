execute if entity @s[scores={to.campfire=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
execute if entity @s[scores={to.campfire=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:campfire run function torchout:placement-api_campfire/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.campfire=1..7}] to.campfire 1
execute if entity @s[scores={to.campfire=1..7}] positioned ^ ^ ^1 run function torchout:placement-api_campfire/detection/1
execute at @s[scores={to.campfire=8..}] positioned ~ ~1.5 ~ run function torchout:placement-api_campfire/detection/2
