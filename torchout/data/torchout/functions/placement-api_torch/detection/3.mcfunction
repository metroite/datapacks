execute if entity @s[scores={to.torch=15..21}] positioned ^ ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^ ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^1 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-1 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^1 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-1 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^1 ^-0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-1 ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^0.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-0.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^0.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-0.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^1 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-1 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^1 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
execute if entity @s[scores={to.torch=15..21}] positioned ^-1 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api_torch/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.torch=15..21}] to.torch 1
execute if entity @s[scores={to.torch=15..21}] positioned ^ ^ ^1 run function torchout:placement-api_torch/detection/3
execute at @s[scores={to.torch=22..}] positioned ~ ~1.5 ~ run function torchout:placement-api_torch/detection/4
