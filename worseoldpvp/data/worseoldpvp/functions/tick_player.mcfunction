#players have to be defined!
scoreboard players add @s wop.extend 0
#data merge @e item
execute if score @s wop.drop matches 1.. positioned ~ ~1 ~ run function worseoldpvp:cooldown/determine
#effects when holding wopdone in mainhand
execute if score @s wop.mode matches 0..1 if entity @s[nbt={SelectedItem:{tag:{wopdone:1}}}] run function worseoldpvp:selected
#sword blocking utility (like scoreboard handling)
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
scoreboard players reset @s wop.drop
