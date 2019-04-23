#Tall grass placement
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:tall_grass[half=lower] replace minecraft:grass
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:tall_grass[half=upper] replace minecraft:air
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:beetroots[age=3] replace minecraft:beetroots
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:melon_stem[age=7] replace minecraft:melon_stem
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:pumpkin_stem[age=7] replace minecraft:pumpkin_stem
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:wheat[age=7] replace minecraft:wheat
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:nether_wart[age=3] replace minecraft:nether_wart
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:sea_pickle[pickles=4,waterlogged=true] replace minecraft:sea_pickle[waterlogged=true]
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:sea_pickle[pickles=4,waterlogged=false] replace minecraft:sea_pickle[waterlogged=false]

particle minecraft:happy_villager ~ ~0.5 ~ 2 1 2 1 50 normal

#calling skullmeal.mcfunction
function graves:usebonemeal/tall_flower
