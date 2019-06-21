tag @s remove to.campfire
#placement (recursive)
execute if entity @s[scores={to.campfire=1..}] positioned ~ ~1.5 ~ run function torchout:placement-api_campfire/detection/1
