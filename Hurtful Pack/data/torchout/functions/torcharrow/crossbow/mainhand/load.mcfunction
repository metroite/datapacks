advancement grant @s only torchout:torch_arrow
playsound minecraft:item.crossbow.loading_end ambient @a ~ ~ ~ 0.5 2
#set texture and tag crossbow
data modify entity @s SelectedItem.tag.CustomModelData set value 7186
data modify entity @s SelectedItem.tag.ChargedProjectiles[0].id set from entity @s Inventory[-1].id
#remove torch
clear @s minecraft:torch 1
#reset binding time score
scoreboard players reset @s to.ta.bind
