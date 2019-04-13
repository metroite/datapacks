scoreboard players add @s to.pa.fail 1
tellraw @s ["",{"text":"error#6:","bold":true,"color":"red","hoverEvent":{"action":"show_text","value":"torchout\\placement-API"}},{"text":" failed to detect "},{"text":"torch","italic":true,"color":"aqua"},{"text":", approach to any unmodified, dropped "},{"text":"oak_button","italic":true,"color":"aqua"},{"text":" item to recover your custom block."}]
###NO UNLIMITED-LIGHT ALLOWED!
execute as @e[tag=to.tag.torch,distance=..7] at @s if block ~ ~ ~ minecraft:torch run tag @s add to.tag.fail
execute as @e[tag=to.tag.torch,distance=..7] at @s if block ~ ~ ~ minecraft:wall_torch run tag @s add to.tag.fail
execute as @e[tag=to.tag.fail,distance=..12] at @s run function torchout:torch/out
#change every torch to a button
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:oak_button[face=floor] replace minecraft:torch
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:oak_button[facing=north,face=wall] replace minecraft:wall_torch[facing=north]
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:oak_button[facing=east,face=wall] replace minecraft:wall_torch[facing=east]
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:oak_button[facing=south,face=wall] replace minecraft:wall_torch[facing=south]
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:oak_button[facing=west,face=wall] replace minecraft:wall_torch[facing=west]
#"out of world" kind-of-fix (to fix this: from 0 to 7 AND from 0 to -7 = 15*5 = 75 lines - no thank you, this will have to do)
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:oak_button[face=floor] replace minecraft:torch
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:oak_button[facing=north,face=wall] replace minecraft:wall_torch[facing=north]
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:oak_button[facing=east,face=wall] replace minecraft:wall_torch[facing=east]
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:oak_button[facing=south,face=wall] replace minecraft:wall_torch[facing=south]
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:oak_button[facing=west,face=wall] replace minecraft:wall_torch[facing=west]
execute as @e[tag=to.tag.fail,distance=..12] at @s run function torchout:torch/in
scoreboard players reset @s to.torch
