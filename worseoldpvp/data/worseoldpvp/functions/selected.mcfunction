#sword-blocking
execute if score $mode$ wop.extend <= 1 wop.extend if entity @s[nbt={SelectedItem:{tag:{wopsword:1b}}}] run function worseoldpvp:sword-block/selected
