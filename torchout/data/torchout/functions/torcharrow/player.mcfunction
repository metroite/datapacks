tag @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:torch"}]}}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:torch"}]}}]}] remove to.ta.shootc

advancement grant @s[scores={to.ta.shoot=1..}] only torchout:torch_arrow
execute if entity @s[scores={to.ta.shoot=1..}] run tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add to.ta.arrow
execute if entity @s[scores={to.ta.shoot=1..}] run clear @s minecraft:torch 1
execute if entity @s[scores={to.ta.shootc=1..}] run tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add to.ta.arrow
#reset texture (CustomModelData)
execute if entity @s[scores={to.ta.shootc=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[]}}}] run data modify entity @s SelectedItem.tag.CustomModelData set value 0
