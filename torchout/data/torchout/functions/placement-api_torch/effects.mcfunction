tag @s remove to.torch
#placement (recursive)
execute if entity @s[scores={to.torch=1..}] positioned ~ ~1.5 ~ run function torchout:placement-api_torch/detection/1
