#remove the carrot_on_a_sticks
clear @a[nbt=!{Inventory:[{Slot:-106b}]}] minecraft:carrot_on_a_stick{wopcarrot:1b}
clear @a[nbt=!{SelectedItem:{tag:{wopsword:1b}}}] minecraft:carrot_on_a_stick{wopcarrot:1b}
#tick for valid players
execute unless score $mode$ wop.mode matches -1 as @a[tag=!wop.no] at @s run function worseoldpvp:tick_player
#pigs should get their AI back
execute as @e[type=minecraft:pig,tag=wop.noai,tag=!wop.no] at @s run function worseoldpvp:pigs/ai
