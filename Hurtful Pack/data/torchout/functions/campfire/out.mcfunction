#particles
particle minecraft:lava ~ ~0.75 ~ 0 0 0 0.5 6 normal
#replace torch with button
fill ~ ~ ~ ~ ~ ~ minecraft:campfire[lit=false] replace minecraft:campfire[lit=true]

playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.3 1
scoreboard players reset @s to.torch
