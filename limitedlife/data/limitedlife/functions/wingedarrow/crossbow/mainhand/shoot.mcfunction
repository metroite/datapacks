tag @e[type=minecraft:arrow,distance=..5,limit=1,sort=nearest] add ll.wa.arrow
#reset texture (CustomModelData)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[]}}}] run data modify entity @s SelectedItem.tag.CustomModelData set value 0
