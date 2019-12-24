#load and mark
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg",tag:{CustomModelData:7061}}],SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function limitedlife:wingedarrow/crossbow/mainhand/player
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:bat_spawn_egg",tag:{CustomModelData:7061}}}] run function limitedlife:wingedarrow/crossbow/offhand/player
#shoot detect
execute if entity @s[scores={ll.wa.shootc=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{CustomModelData:7062}}}] run function limitedlife:wingedarrow/crossbow/mainhand/shoot
execute if entity @s[scores={ll.wa.shootc=1..},nbt=!{SelectedItem:{id:"minecraft:crossbow"}},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{CustomModelData:7062}}]}] run function limitedlife:wingedarrow/crossbow/offhand/shoot
