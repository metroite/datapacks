execute if entity @s[nbt={inGround:1b}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #torchout:air run function torchout:torcharrow/setblock
tag @s[nbt={inGround:1b}] remove to.ta.arrow
#particles
particle minecraft:flame ^ ^ ^0.1 0 0 0 0.05 1 force
