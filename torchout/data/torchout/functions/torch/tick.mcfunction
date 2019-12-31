#cleanup (no item drop)
execute unless block ~ ~ ~ #torchout:torches run function torchout:torch/cleanup
#inactive
execute if block ~ ~ ~ minecraft:oak_button run function torchout:torch/inactive
#active is handled in main1200
