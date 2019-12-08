#particles
particle minecraft:lava ~ ~0.75 ~ 0 0 0 0.5 6 normal
playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.3 1
#replace torch with button
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=false,facing=north] replace minecraft:campfire[lit=true,facing=north]
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=false,facing=south] replace minecraft:campfire[lit=true,facing=south]
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=false,facing=east] replace minecraft:campfire[lit=true,facing=east]
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=false,facing=west] replace minecraft:campfire[lit=true,facing=west]

tag @s remove to.cf.activated
scoreboard players reset @s to.torch
