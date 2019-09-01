#torchin and apply damage to the flint_and_steel
execute if block ~ ~ ~ minecraft:oak_button[powered=true] as @p[distance=..8,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run function torchout:torch/damage
execute if block ~ ~ ~ minecraft:oak_button[powered=true] if entity @p[distance=..8,scores={to.damage=2..},nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run function torchout:torch/in
execute if block ~ ~ ~ minecraft:oak_button as @e[distance=..1,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,tag=!to.noflame] run function torchout:torch/flaming_entity
#reactivate button
execute if block ~ ~ ~ minecraft:oak_button[powered=true,face=floor] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[powered=false,face=floor] replace
execute if block ~ ~ ~ minecraft:oak_button[powered=true,face=wall,facing=north] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[powered=false,face=wall,facing=north] replace
execute if block ~ ~ ~ minecraft:oak_button[powered=true,face=wall,facing=east] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[powered=false,face=wall,facing=east] replace
execute if block ~ ~ ~ minecraft:oak_button[powered=true,face=wall,facing=south] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[powered=false,face=wall,facing=south] replace
execute if block ~ ~ ~ minecraft:oak_button[powered=true,face=wall,facing=west] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[powered=false,face=wall,facing=west] replace
