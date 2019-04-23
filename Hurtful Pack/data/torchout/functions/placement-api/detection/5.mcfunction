execute if entity @s[scores={to.torch=29..35}] positioned ^ ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^ ^2.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-2 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^2 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-2 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^1.5 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-1.5 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^2 ^-2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=29..35}] positioned ^-2 ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.torch=29..35}] to.torch 1
execute if entity @s[scores={to.torch=29..35}] positioned ^ ^ ^1 run function torchout:placement-api/detection/5
execute if entity @s[scores={to.torch=36..}] run function torchout:placement-api/detection/fail
