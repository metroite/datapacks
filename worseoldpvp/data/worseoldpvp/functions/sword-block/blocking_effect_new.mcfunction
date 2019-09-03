effect give @s[nbt=!{ActiveEffects:[{Id:11b}]},nbt={SelectedItem:{tag:{CustomModelData:6828}}}] minecraft:resistance 1 1 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] SelectedItem.tag.CustomModelData set value 6828
effect give @s[nbt=!{ActiveEffects:[{Id:11b}]},nbt={SelectedItem:{tag:{CustomModelData:6829}}}] minecraft:resistance 1 1 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] SelectedItem.tag.CustomModelData set value 6829
effect give @s[nbt=!{ActiveEffects:[{Id:11b}]},nbt={SelectedItem:{tag:{CustomModelData:6830}}}] minecraft:resistance 1 2 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] SelectedItem.tag.CustomModelData set value 6830
effect give @s[nbt=!{ActiveEffects:[{Id:11b}]},nbt={SelectedItem:{tag:{CustomModelData:6831}}}] minecraft:resistance 1 0 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] SelectedItem.tag.CustomModelData set value 6831
effect give @s[nbt=!{ActiveEffects:[{Id:11b}]},nbt={SelectedItem:{tag:{CustomModelData:6832}}}] minecraft:resistance 1 0 true
data modify entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] SelectedItem.tag.CustomModelData set value 6832
data modify entity @s[nbt=!{SelectedItem:{tag:{wopcooldown:-1}}}] SelectedItem.tag.wopcooldown set value -1
effect give @s[nbt=!{ActiveEffects:[{Id:18b}]}] minecraft:weakness 1 100 true
execute if score $mustsneak$ wop.extend matches ..0 run effect give @s[nbt=!{ActiveEffects:[{Id:2b}]}] minecraft:slowness 1 3 true
tag @s add wop.effect
#playsound if hurt while blocking, also calculation of Damage value for the durability of the sword
execute if entity @s[nbt={HurtTime:9s}] run function worseoldpvp:sword-block/damage/calc
