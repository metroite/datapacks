execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}]}] run function torchout:torcharrow/bow/shoot
execute if entity @s[tag=!to.ta.shot,nbt={SelectedItem:{id:"minecraft:torch"}}] run function torchout:torcharrow/bow/shoot
tag @s remove to.ta.shot
