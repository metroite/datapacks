#resets the sword back into the normal position and gives the right click detecting carrot_on_a_stick back
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,wopunblock:1b,CustomModelData:6827}
data remove entity @s SelectedItem.tag.CustomModelData
