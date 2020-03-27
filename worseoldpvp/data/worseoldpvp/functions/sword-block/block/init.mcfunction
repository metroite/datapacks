#block sound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run playsound minecraft:item.armor.equip_diamond player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run playsound minecraft:item.armor.equip_gold player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 2
#damage calculation (doesn't work in any version besides 1.14)
execute store result score @s wop.damage run data get entity @s SelectedItem.tag.Damage
#Recognize if selected slot has changed (exploitable if not in place)
execute store result score @s wop.itemslot run data get entity @s SelectedItemSlot
#part of removing blocking effects
execute if score $attribute$ wop.extend matches ..0 run tag @s add wop.removeeffect
