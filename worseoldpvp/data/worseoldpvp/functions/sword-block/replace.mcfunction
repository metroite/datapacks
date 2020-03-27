#gives the right click detecting carrot_on_a_stick back
clear @s minecraft:carrot_on_a_stick{wopcarrot:1b,wopblocking:1b}
replaceitem entity @s[nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand minecraft:carrot_on_a_stick{wopcarrot:1b,wopunblock:1b,CustomModelData:6827}
#remove the blocking effects (if extend time is up)
execute if score $attribute$ wop.extend matches ..0 if entity @s[tag=wop.removeeffect] run function worseoldpvp:sword-block/remove/type/effect
