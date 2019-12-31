tag @e[type=minecraft:arrow,distance=..5,limit=1,sort=nearest] add to.ta.arrow
#reset texture (CustomModelData)
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[]}}]}] run data modify entity @s Inventory[-1].tag.CustomModelData set value 0
