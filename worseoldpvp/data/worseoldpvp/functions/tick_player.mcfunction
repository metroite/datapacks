#data merge @e item
execute if score @s wop.drop matches 1.. positioned ~ ~1 ~ run function worseoldpvp:cooldown/determine
#effects when holding modified in mainhand
execute if score @s wop.mode matches 0..1 if data entity @s SelectedItem.tag.wopcooldown run function worseoldpvp:selected
#sword blocking utility (like scoreboard handling)
execute if score @s wop.mode matches 0..1 run function worseoldpvp:sword-block/utility
scoreboard players reset @s wop.drop
