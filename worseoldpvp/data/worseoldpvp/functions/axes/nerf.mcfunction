#nerf axes onto 1.8 default values
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run attribute @s minecraft:generic.attack_damage modifier add c0c4f96f-04d1-4b47-ae9f-e58647546be0 "1.8 Axe" -3 add
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run attribute @s minecraft:generic.attack_damage modifier add c0c4f96f-04d1-4b47-ae9f-e58647546be0 "1.8 Axe" -3 add
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run attribute @s minecraft:generic.attack_damage modifier add c0c4f96f-04d1-4b47-ae9f-e58647546be0 "1.8 Axe" -4 add
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run attribute @s minecraft:generic.attack_damage modifier add c0c4f96f-04d1-4b47-ae9f-e58647546be0 "1.8 Axe" -4 add
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run attribute @s minecraft:generic.attack_damage modifier add c0c4f96f-04d1-4b47-ae9f-e58647546be0 "1.8 Axe" -4 add
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run attribute @s minecraft:generic.attack_damage modifier add c0c4f96f-04d1-4b47-ae9f-e58647546be0 "1.8 Axe" -5 add
#tag player for later normalization
tag @s add wop.holdaxe
#Recognize if selected slot changes later on (exploitable if not in place)
execute store result score @s wop.itemslot run data get entity @s SelectedItemSlot
