#replace campfire with lit=true
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=true,facing=north] replace minecraft:campfire[lit=false,facing=north]
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=true,facing=south] replace minecraft:campfire[lit=false,facing=south]
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=true,facing=east] replace minecraft:campfire[lit=false,facing=east]
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=true,facing=west] replace minecraft:campfire[lit=false,facing=west]
#grant advancement
advancement grant @p[distance=..8] only torchout:light_up

tag @s remove to.cf.fail
