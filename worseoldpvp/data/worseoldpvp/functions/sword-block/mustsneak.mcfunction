#remove the blocking effects (if not sneaking)
execute if score $mustsneak$ wop.extend matches 1.. unless score @s wop.sneaking matches 1.. if data entity @s Inventory.[-1].tag.wopcarrot run function worseoldpvp:sword-block/remove/trigger
#sword-blocking
execute if score $mustsneak$ wop.extend matches 1.. if entity @s[scores={wop.sneaking=1..}] run function worseoldpvp:sword-block/selected
execute if score $mustsneak$ wop.extend matches ..0 run function worseoldpvp:sword-block/selected
