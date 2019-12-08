#burntime
scoreboard players operation @s to.torch = $global$ to.torch
scoreboard players operation @s to.torch += $burntime$ to.torch
#replace button with torch
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=north] replace minecraft:oak_button[facing=north,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=east] replace minecraft:oak_button[facing=east,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=south] replace minecraft:oak_button[facing=south,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:wall_torch[facing=west] replace minecraft:oak_button[facing=west,face=wall]
fill ~ ~ ~ ~ ~ ~ minecraft:torch replace minecraft:oak_button[face=floor]
#remove visual torchout
execute if block ~ ~ ~ minecraft:wall_torch positioned ~ ~-0.215 ~ run kill @e[type=minecraft:armor_stand,distance=..0.5,tag=to.torchvisual,limit=1,sort=nearest]
execute if block ~ ~ ~ minecraft:torch positioned ~ ~-0.38 ~ run kill @e[type=minecraft:armor_stand,distance=..0.5,tag=to.torchvisualfloor,limit=1,sort=nearest]
#particles/effects
execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run particle minecraft:flame ~ ~0.85 ~0.3 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run particle minecraft:flame ~-0.3 ~0.85 ~ 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run particle minecraft:flame ~ ~0.85 ~-0.3 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run particle minecraft:flame ~0.3 ~0.85 ~ 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:torch run particle minecraft:flame ~ ~0.75 ~ 0 0 0 0.01 12 normal
playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 0.65 1
#break flint_and_steel if it should
execute as @p[distance=..8,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run function torchout:torch/damaged
#grant advancement
advancement grant @p[distance=..8] only torchout:light_up
