#in mode 1, no speedy tools are allowed
execute if score $mode$ wop.extend = 1 wop.extend run effect give @s[nbt={SelectedItem:{tag:{wopcooldown:0b}}}] minecraft:weakness 1 100 true
execute if score $mode$ wop.extend = 1 wop.extend run title @s[nbt={SelectedItem:{tag:{wopcooldown:0b}}}] actionbar ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8 (drop your tools once to update them)"}},{"text":" drop your selected item once, its too fast for this mode!"}]

#sword-blocking
execute if score $mode$ wop.extend <= 1 wop.extend if entity @s[nbt={SelectedItem:{tag:{wopsword:1b}}}] run function worseoldpvp:sword-block/selected
