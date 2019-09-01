advancement grant @s only limitedlife:winged_arrow
#mainhand
data modify entity @s[nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] SelectedItem.tag.CustomModelData set value 7062
data modify entity @s[nbt={SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] SelectedItem.tag.ChargedProjectiles[0].id set from entity @s Inventory[-1].id
#offhand
data modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}]}] Inventory[-1].tag.CustomModelData set value 7062
data modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}]}] Inventory[-1].tag.ChargedProjectiles[0].id set from entity @s SelectedItem.id
clear @s minecraft:bat_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}} 1
