##called by main
#reset blocking effects
clear @s minecraft:carrot_on_a_stick{wopcarrot:1b}
scoreboard players set @s wop.extend 0
execute if score $attribute$ wop.extend matches ..0 if score @s wop.extend matches 1.. run function worseoldpvp:sword-block/sneak/remove_effect
