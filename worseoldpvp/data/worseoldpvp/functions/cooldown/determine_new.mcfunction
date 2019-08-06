#determine if yes or no
execute unless score @s[nbt=!{SelectedItem:{tag:{wopcooldown:0}}}] wop.mode matches 1 run function worseoldpvp:cooldown/no_new
execute if score @s[nbt=!{SelectedItem:{tag:{wopcooldown:1}}}] wop.mode matches 1 run function worseoldpvp:cooldown/yes_new
