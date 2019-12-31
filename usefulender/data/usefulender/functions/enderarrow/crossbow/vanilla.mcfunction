#load and mark
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}],SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function usefulender:enderarrow/crossbow/mainhand/player
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:ender_pearl"}}] run function usefulender:enderarrow/crossbow/offhand/player
#shoot detect
execute if entity @s[scores={ue.ea.shootc=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{CustomModelData:7131}}}] run function usefulender:enderarrow/crossbow/mainhand/shoot
execute if entity @s[scores={ue.ea.shootc=1..},nbt=!{SelectedItem:{id:"minecraft:crossbow"}},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{CustomModelData:7131}}]}] run function usefulender:enderarrow/crossbow/offhand/shoot
