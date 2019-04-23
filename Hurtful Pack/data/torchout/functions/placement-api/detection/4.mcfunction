execute if entity @s[scores={to.torch=22..28}] positioned ^ ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^ ^2 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1.5 ^ ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1.5 ^-1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1.5 ^1 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^1.5 ^-1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
execute if entity @s[scores={to.torch=22..28}] positioned ^-1.5 ^1.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 #torchout:torch run function torchout:placement-api/success
#repeat if unsuccessful
scoreboard players add @s[scores={to.torch=22..28}] to.torch 1
execute if entity @s[scores={to.torch=22..28}] positioned ^ ^ ^1 run function torchout:placement-api/detection/4
execute at @s[scores={to.torch=29..}] positioned ~ ~1.5 ~ run function torchout:placement-api/detection/5
