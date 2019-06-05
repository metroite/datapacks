tag @s add to.cf.active
#torchout
execute if score @s to.torch <= $global$ to.torch run function torchout:campfire/out
execute if entity @e[type=item,distance=..0.5] run function torchout:campfire/refuel
