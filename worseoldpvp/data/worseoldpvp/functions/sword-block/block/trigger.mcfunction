#determine blocking type
execute if score $attribute$ wop.extend matches 1.. if score $mustsneak$ wop.extend matches 1.. run function worseoldpvp:sword-block/block/type/sneak/attribute
execute if score $attribute$ wop.extend matches 1.. if score $mustsneak$ wop.extend matches ..0 run function worseoldpvp:sword-block/block/type/nosneak/attribute
execute if score $attribute$ wop.extend matches ..0 unless entity @s[nbt={ActiveEffects:[{Id:11b}]}] run function worseoldpvp:sword-block/block/type/effect
#remove blocking effects (if SelectedItemSlot changes) (wop.itemslot is read in worseoldpvp:sword-block/init, at inital block)
execute store result score @s wop.itemslottemp run data get entity @s SelectedItemSlot
execute unless score @s wop.itemslottemp = @s wop.itemslot run function worseoldpvp:sword-block/remove/trigger
#remove the blocking effects (if no carrot_on_a_stick is in the offhand)
execute unless data entity @s Inventory.[-1].tag.wopcarrot run function worseoldpvp:sword-block/remove/trigger
#playsound if hurt while blocking, also breaks blocking and puts on a configurable timer
execute if entity @s[nbt={HurtTime:9s}] run function worseoldpvp:sword-block/damage/damaged
