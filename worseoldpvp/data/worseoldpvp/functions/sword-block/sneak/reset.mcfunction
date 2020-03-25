#gives the right click detecting carrot_on_a_stick back
clear @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{wopcarrot:1b}}]}] minecraft:carrot_on_a_stick{wopcarrot:1b,wopblocking:1b}
replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,wopunblock:1b,CustomModelData:6827}
