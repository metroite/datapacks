#shoot detect
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg",tag:{CustomModelData:7061}}],SelectedItem:{id:"minecraft:crossbow"}}] run function limitedlife:wingedarrow/crossbow/mainhand/shoot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bat_spawn_egg",tag:{CustomModelData:7061}},Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function limitedlife:wingedarrow/crossbow/offhand/shoot
#remove item
clear @s minecraft:bat_spawn_egg{CustomModelData:7061} 1
