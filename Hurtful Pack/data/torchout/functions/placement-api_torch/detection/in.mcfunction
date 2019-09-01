#replace button with torch
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=north] replace minecraft:oak_button[facing=north,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=east] replace minecraft:oak_button[facing=east,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=south] replace minecraft:oak_button[facing=south,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=west] replace minecraft:oak_button[facing=west,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:torch replace minecraft:oak_button[face=floor]
#remove visual torchout
execute if block ~ ~ ~ minecraft:wall_torch positioned ~ ~-0.215 ~ run kill @e[distance=..0.5,tag=to.torchvisual,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:torch positioned ~ ~-0.38 ~ run kill @e[distance=..0.5,tag=to.torchvisualfloor,limit=1,sort=nearest]

tag @s remove to.tag.fail
