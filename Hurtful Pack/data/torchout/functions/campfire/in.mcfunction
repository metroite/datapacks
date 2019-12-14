#refuel effects
execute if entity @s[scores={to.torch=-2147483648..}] run particle minecraft:lava ~ ~0.75 ~ 0 0 0 0.5 6 normal
execute if entity @s[scores={to.torch=-2147483648..}] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.5 2
#burntime
execute unless entity @s[scores={to.torch=-2147483648..}] run scoreboard players operation @s to.torch = $global$ to.torch
scoreboard players operation @s to.torch += $burntime$ to.torch
scoreboard players operation @s to.torch += $burntime$ to.torch
scoreboard players operation @s to.torch += $burntime$ to.torch
scoreboard players operation @s to.torch += $burntime$ to.torch
#particles/effects
particle minecraft:flame ~ ~0.75 ~ 0 0 0 0.01 12 normal
playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 0.65 1
#grant advancement
advancement grant @p[distance=..8] only torchout:light_up
tag @s remove to.cf.inactive
