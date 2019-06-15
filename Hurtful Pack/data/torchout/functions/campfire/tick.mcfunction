#cleanup
execute unless block ~ ~ ~ minecraft:campfire run kill @s
#inactive
execute if entity @s[tag=!to.cf.active] if block ~ ~ ~ minecraft:campfire[lit=true] run function torchout:campfire/in
#remove activeness: it would loop and go crazy without this tag
tag @s remove to.cf.active
#active
execute if block ~ ~ ~ minecraft:campfire[lit=true] run function torchout:campfire/active
