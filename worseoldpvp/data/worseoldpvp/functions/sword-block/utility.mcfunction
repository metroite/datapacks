#make sure every player has a score in wop.extend
scoreboard players reset @s wop.usecarrot
scoreboard players reset @s wop.sneaking
scoreboard players remove @s[scores={wop.extend=1..}] wop.extend 1
#remove the blocking effects (if not selected)
execute if data entity @s Inventory.[].tag.wopcarrot if entity @s[nbt=!{SelectedItem:{tag:{wopsword:1}}}] run function worseoldpvp:sword-block/remove/trigger
#if block was broken by a hit before make a sound if its ready again
execute if score @s wop.extend matches 1 if entity @s[tag=wop.wasbroken] run function worseoldpvp:sword-block/damage/break_ready
