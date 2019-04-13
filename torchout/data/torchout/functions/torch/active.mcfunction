#torchout
scoreboard players add @s to.torch 1
execute if score @s to.torch >= $burntime$ to.torch run function torchout:torch/out
