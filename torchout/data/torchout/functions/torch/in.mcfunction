fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=north] replace minecraft:oak_button[facing=north,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=east] replace minecraft:oak_button[facing=east,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=south] replace minecraft:oak_button[facing=south,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=west] replace minecraft:oak_button[facing=west,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:torch replace minecraft:oak_button[face=floor]

execute if block ~ ~ ~ minecraft:wall_torch positioned ~ ~-1.15 ~ run kill @e[tag=to.torchvisual,limit=1,sort=nearest,distance=..0.5]
execute if block ~ ~ ~ minecraft:torch positioned ~ ~-1.8 ~ run kill @e[tag=to.torchvisualfloor,limit=1,sort=nearest,distance=..0.5]

execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run particle minecraft:flame ~ ~0.85 ~0.3 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run particle minecraft:flame ~-0.3 ~0.85 ~ 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run particle minecraft:flame ~ ~0.85 ~-0.3 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run particle minecraft:flame ~0.3 ~0.85 ~ 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:torch run particle minecraft:flame ~ ~0.75 ~ 0 0 0 0.01 12 normal
playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 0.3 1
tag @s remove to.tag.fail
