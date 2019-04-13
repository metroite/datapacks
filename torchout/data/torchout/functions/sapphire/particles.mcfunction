#elsewhere cahnges in datapack: main.mcfunction
execute unless block ~ ~ ~ #torchout:torch run function torchout:sapphire/cleanup
#remove setup tag
execute if entity @s[tag=metroite.placement] run function sapphire:particle_generator/facing
#particles
execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run particle minecraft:dust 0.25 0.1 1 0.75 ~ ~0.85 ~0.3 0.075 0.075 0.075 0.05 1 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run particle minecraft:dust 0.25 0.1 1 0.75 ~-0.3 ~0.85 ~ 0.075 0.075 0.075 0.05 1 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run particle minecraft:dust 0.25 0.1 1 0.75 ~ ~0.85 ~-0.3 0.075 0.075 0.075 0.05 1 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run particle minecraft:dust 0.25 0.1 1 0.75 ~0.3 ~0.85 ~ 0.075 0.075 0.075 0.05 1 normal
execute if block ~ ~ ~ minecraft:torch run particle minecraft:dust 0.25 0.1 1 0.75 ~ ~0.75 ~ 0.075 0.075 0.075 0.05 1 normal
