#Tall grass placement
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:tall_grass[half=lower] replace minecraft:grass
fill ~4 ~-2 ~4 ~-4 ~2 ~-4 minecraft:tall_grass[half=upper] replace minecraft:air
#calling skullmeal.mcfunction
function graves:skullmeal
#end loop
tag @s remove g.usebonemeal
