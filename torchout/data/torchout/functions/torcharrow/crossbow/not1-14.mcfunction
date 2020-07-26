#shoot detect
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}],SelectedItem:{id:"minecraft:crossbow"}}] run function torchout:torcharrow/crossbow/mainhand/shoot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:torch"},Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function torchout:torcharrow/crossbow/offhand/shoot
