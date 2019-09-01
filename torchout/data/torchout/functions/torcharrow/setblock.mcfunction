#sets the torch
execute unless block ~ ~-0.6 ~ #torchout:no_torcharrow run setblock ~ ~ ~ minecraft:torch replace
execute if block ~ ~-0.6 ~ #torchout:no_torcharrow unless block ~0.6 ~ ~ #torchout:no_torcharrow run setblock ~ ~ ~ minecraft:wall_torch[facing=west] replace
execute if block ~ ~-0.6 ~ #torchout:no_torcharrow unless block ~-0.6 ~ ~ #torchout:no_torcharrow run setblock ~ ~ ~ minecraft:wall_torch[facing=east] replace
execute if block ~ ~-0.6 ~ #torchout:no_torcharrow unless block ~ ~ ~0.6 #torchout:no_torcharrow run setblock ~ ~ ~ minecraft:wall_torch[facing=north] replace
execute if block ~ ~-0.6 ~ #torchout:no_torcharrow unless block ~ ~ ~-0.6 #torchout:no_torcharrow run setblock ~ ~ ~ minecraft:wall_torch[facing=south] replace
#make a torchout torch out of the defaut torch
execute if block ~ ~ ~ #torchout:torch run function torchout:placement-api_torch/success
