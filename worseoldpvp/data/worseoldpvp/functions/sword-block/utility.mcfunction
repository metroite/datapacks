#make sure every player has a score in wop.extend
scoreboard players reset @s wop.usecarrot
scoreboard players reset @s wop.sneaking
scoreboard players remove @s[scores={wop.extend=1..}] wop.extend 1
#remove the blocking effects (if not selected)
execute if data entity @s Inventory.[].tag.wopcarrot if entity @s[nbt=!{SelectedItem:{tag:{wopsword:1}}}] run function worseoldpvp:sword-block/remove/trigger
