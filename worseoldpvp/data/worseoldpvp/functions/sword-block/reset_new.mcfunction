#resets the sword back into the normal position
data remove entity @s[nbt={SelectedItem:{tag:{wopsword:1}}}] SelectedItem.tag.CustomModelData
execute if entity @s[tag=wop.effect] run function worseoldpvp:sword-block/remove_effect
