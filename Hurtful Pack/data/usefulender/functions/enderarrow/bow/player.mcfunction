execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] run function usefulender:enderarrow/bow/shoot
execute if entity @s[tag=!ue.ea.shot,nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] run function usefulender:enderarrow/bow/shoot
tag @s remove ue.ea.shot
