#cleanup
execute unless block ~ ~ ~ #torchout:torches run function torchout:torch/cleanup
#inactive
execute if block ~ ~ ~ minecraft:oak_button run function torchout:torch/inactive
#active
execute if block ~ ~ ~ #torchout:torch run function torchout:torch/active
