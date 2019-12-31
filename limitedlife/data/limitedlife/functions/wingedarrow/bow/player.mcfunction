execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg",tag:{CustomModelData:7061}}]}] run function limitedlife:wingedarrow/bow/shoot
execute if entity @s[tag=!ll.wa.shot,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg",tag:{CustomModelData:7061}}}] run function limitedlife:wingedarrow/bow/shoot
tag @s remove ll.wa.shot
