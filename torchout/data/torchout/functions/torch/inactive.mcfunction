#torchin if closest player is holding a flint and steel
execute if block ~ ~ ~ minecraft:oak_button[powered=true] if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run function torchout:torch/in
execute as @e[distance=..1,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,tag=!to.noflame] run function torchout:torch/flaming_entity
