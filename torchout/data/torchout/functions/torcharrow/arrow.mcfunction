execute if entity @s[nbt={inGround:1b}] unless block ~ ~ ~ #torchout:air run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}
execute if entity @s[nbt={inGround:1b}] if block ~ ~ ~ #torchout:air run function torchout:torcharrow/setblock
tag @s[nbt={inGround:1b}] remove to.ta.arrow
#particles
particle minecraft:flame ^ ^ ^0.1 0 0 0 0.05 1 force
