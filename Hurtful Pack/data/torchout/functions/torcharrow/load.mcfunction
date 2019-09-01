advancement grant @s only torchout:torch_arrow
#mainhand
data modify entity @s[nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] SelectedItem.tag.CustomModelData set value 7186
data modify entity @s[nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] SelectedItem.tag.ChargedProjectiles[0].id set from entity @s Inventory[-1].id
#offhand
data modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}]}] Inventory[-1].tag.CustomModelData set value 7186
data modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}]}] Inventory[-1].tag.ChargedProjectiles[0].id set from entity @s SelectedItem.id
clear @s minecraft:torch 1
