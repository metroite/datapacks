#block sound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run playsound minecraft:item.armor.equip_diamond player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run playsound minecraft:item.armor.equip_gold player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 2
