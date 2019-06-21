#campfire in and apply damage to the flint_and_steel
execute if block ~ ~ ~ minecraft:campfire[lit=true] if entity @p[distance=..8,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run function torchout:campfire/in
