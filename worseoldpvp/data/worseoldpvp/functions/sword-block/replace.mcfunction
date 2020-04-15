#gives the right click detecting carrot_on_a_stick back
clear @s minecraft:carrot_on_a_stick{wopcarrot:1b,wopblocking:1b}
replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,wopblocking:0b,CustomModelData:6827}
