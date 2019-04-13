execute if entity @s[scores={to.torch=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.torch=1..7}] to.torch 1
execute if entity @s[scores={to.torch=1..7}] positioned ^ ^ ^1 run function torchout:placement-api/detection/1
execute at @s[scores={to.torch=8..}] positioned ~ ~1.5 ~ run function torchout:placement-api/detection/2
