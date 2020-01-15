scoreboard objectives add g.deaths deathCount
execute unless score $display_name$ g.deaths matches 0.. run scoreboard players set $display_name$ g.deaths 1
execute if score $display_name$ g.deaths matches 1.. run setblock 32 1 11 minecraft:bedrock
execute if score $display_name$ g.deaths matches 1.. run setblock 32 0 11 minecraft:oak_sign
scoreboard objectives add g.usebonemeal minecraft.used:minecraft.bone_meal
execute unless score $generate_trees$ g.usebonemeal matches 0.. run scoreboard players set $generate_trees$ g.usebonemeal 1
scoreboard objectives add g.sapling_height dummy
scoreboard objectives add g.sapling_rng dummy
#scheduled functions
schedule function graves:main20 12t
schedule function graves:main100 23t
