advancement grant @s only limitedlife:winged_arrow
playsound minecraft:item.crossbow.loading_end ambient @a ~ ~ ~ 0.5 2
#set texture and tag crossbow
data modify entity @s Inventory[-1].tag.CustomModelData set value 7062
data modify entity @s Inventory[-1].tag.ChargedProjectiles[0].id set from entity @s SelectedItem.id
#remove torch
clear @s minecraft:bat_spawn_egg{CustomModelData:7061} 1
#reset binding time score
scoreboard players reset @s ll.wa.bind
