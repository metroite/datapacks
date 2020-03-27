#determine blocking type
execute if score $attribute$ wop.extend matches 1.. if score $mustsneak$ wop.extend matches 1.. run function worseoldpvp:sword-block/block/type/attribute_sneak
execute if score $attribute$ wop.extend matches 1.. if score $mustsneak$ wop.extend matches ..0 run function worseoldpvp:sword-block/block/type/attribute
execute if score $attribute$ wop.extend matches ..0 run function worseoldpvp:sword-block/block/type/effect
#remove blocking effects (if SelectedItemSlot changes) (wop.itemslot is read in worseoldpvp:sword-block/init, at inital block)
execute store result score @s wop.itemslottemp run data get entity @s SelectedItemSlot
execute unless score @s wop.itemslottemp = @s wop.itemslot run function worseoldpvp:sword-block/remove/type/attribute_replace
