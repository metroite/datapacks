#cleanup
execute unless block ~ ~ ~ minecraft:campfire run kill @s
#inactive
execute if entity @s[tag=!to.cf.activated] if block ~ ~ ~ minecraft:campfire[lit=true] run function torchout:campfire/in
#active
execute if block ~ ~ ~ minecraft:campfire[lit=true] run function torchout:campfire/active
