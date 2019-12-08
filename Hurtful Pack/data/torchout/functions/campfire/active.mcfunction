tag @s add to.cf.activated
#extinguish
execute if score @s to.torch <= $global$ to.torch run function torchout:campfire/out
execute if entity @e[type=minecraft:item,distance=..0.5] run function torchout:campfire/refuel
