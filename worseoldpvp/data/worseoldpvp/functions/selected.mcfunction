#in mode 1, no speedy tools are allowed message
execute if score @s wop.mode matches 1 run effect give @s[nbt={SelectedItem:{tag:{wopcooldown:0}}}] minecraft:weakness 2 100 true
execute if score @s wop.mode matches 1 run title @s[nbt={SelectedItem:{tag:{wopcooldown:0}}}] actionbar ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" drop your selected item once, its too fast for this mode!"}]
#remove the blocking effects (if not sneaking)
execute if score $mustsneak$ wop.extend matches 1.. unless score @s wop.sneaking matches 1.. if data entity @s Inventory.[-1].tag.wopcarrot run function worseoldpvp:sword-block/remove/trigger
#sword-blocking
execute if score $mustsneak$ wop.extend matches 1.. if entity @s[scores={wop.sneaking=1..},nbt={SelectedItem:{tag:{wopsword:1}}}] run function worseoldpvp:sword-block/selected
execute if score $mustsneak$ wop.extend matches ..0 if entity @s[nbt={SelectedItem:{tag:{wopsword:1}}}] run function worseoldpvp:sword-block/selected
