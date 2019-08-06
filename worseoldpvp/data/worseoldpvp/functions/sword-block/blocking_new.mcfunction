data modify entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] SelectedItem.tag.CustomModelData set value 6828
effect give @s[nbt={SelectedItem:{tag:{CustomModelData:6828}}}] minecraft:resistance 1 1 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] SelectedItem.tag.CustomModelData set value 6829
effect give @s[nbt={SelectedItem:{tag:{CustomModelData:6829}}}] minecraft:resistance 1 1 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] SelectedItem.tag.CustomModelData set value 6830
effect give @s[nbt={SelectedItem:{tag:{CustomModelData:6830}}}] minecraft:resistance 1 2 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] SelectedItem.tag.CustomModelData set value 6831
effect give @s[nbt={SelectedItem:{tag:{CustomModelData:6831}}}] minecraft:resistance 1 0 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] SelectedItem.tag.CustomModelData set value 6832
effect give @s[nbt={SelectedItem:{tag:{CustomModelData:6832}}}] minecraft:resistance 1 0 true

effect give @s minecraft:weakness 1 100 true
#playsound if hurt while blocking, also calculation of Damage value for the durability of the sword
execute if entity @s[nbt={HurtTime:9s}] run function worseoldpvp:sword-block/damage/calc
