advancement grant @s only usefulender:ender_arrow
playsound minecraft:item.crossbow.loading_end ambient @a ~ ~ ~ 0.5 2
#set texture and tag crossbow
data modify entity @s Inventory[-1].tag.CustomModelData set value 7131
data modify entity @s Inventory[-1].tag.ChargedProjectiles[0].id set from entity @s SelectedItem.id
#remove item
clear @s minecraft:ender_pearl 1
give @s minecraft:arrow 1
#reset binding time score
scoreboard players reset @s ue.ea.bind
