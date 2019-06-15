execute if entity @s[scores={to.torch=8..14}] positioned ^ ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^ ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^-0.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^-0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^0.5 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=8..14}] positioned ^-0.5 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.torch=8..14}] to.torch 1
execute if entity @s[scores={to.torch=8..14}] positioned ^ ^ ^1 run function torchout:placement-api_torch/detection/2
execute at @s[scores={to.torch=15..}] positioned ~ ~1.5 ~ run function torchout:placement-api_torch/detection/3
