#mainhand
data modify entity @s[nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] SelectedItem.tag.ChargedProjectiles[0].id set from entity @s Inventory[-1].id
data modify entity @s[nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] SelectedItem.tag.ChargedProjectiles[0].Count set from entity @s Inventory[-1].Count
#offhand
data modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}]}] Inventory[-1].tag.ChargedProjectiles[0].id set from entity @s SelectedItem.id
data modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}]}] Inventory[-1].tag.ChargedProjectiles[0].Count set from entity @s SelectedItem.Count
clear @s minecraft:ender_pearl 1
give @s minecraft:arrow 1
