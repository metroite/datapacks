#normalize attack_speed old
effect give @a[nbt={SelectedItem:{tag:{wopcooldown:0}}}] minecraft:weakness 1 100 true
title @a[nbt={SelectedItem:{tag:{wopcooldown:0}}}] actionbar ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://www.metroite.de/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8"}},{"text":" drop your selected item once, its too fast, the datapack has been uninstalled!"}]
execute at @a as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:1}}}] run function worseoldpvp:cooldown/yes
#remove carrot_on_a_stick: also done in function cooldown/yes ^^
clear @a minecraft:carrot_on_a_stick{wopcarrot:1b}
#pigs should get their AI back
execute as @e[type=minecraft:pig,tag=wop.noai] at @s run function worseoldpvp:pigs/ai
