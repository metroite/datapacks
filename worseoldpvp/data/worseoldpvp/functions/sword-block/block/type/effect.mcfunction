effect give @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] minecraft:resistance 1 1 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] SelectedItem.tag.CustomModelData set value 6828
effect give @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] minecraft:resistance 1 1 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] SelectedItem.tag.CustomModelData set value 6829
effect give @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] minecraft:resistance 1 2 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] SelectedItem.tag.CustomModelData set value 6830
effect give @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] minecraft:resistance 1 0 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] SelectedItem.tag.CustomModelData set value 6831
effect give @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] minecraft:resistance 1 0 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] SelectedItem.tag.CustomModelData set value 6832
effect give @s minecraft:weakness 1 100 true
execute if score $mustsneak$ wop.extend matches ..0 run effect give @s minecraft:slowness 1 3 true
