#shoot detect
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}],SelectedItem:{id:"minecraft:crossbow"}}] run function usefulender:enderarrow/crossbow/mainhand/shoot
execute if entity @s[nbt={SelectedItem:{id:"minecraft:ender_pearl"},Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] run function usefulender:enderarrow/crossbow/offhand/shoot
#remove item
clear @s minecraft:ender_pearl 1
give @s minecraft:arrow 1
