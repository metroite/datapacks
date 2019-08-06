#init
scoreboard objectives remove wop.usecarrot
scoreboard objectives remove wop.extend
scoreboard objectives remove wop.health
scoreboard objectives remove wop.damage
scoreboard objectives remove wop.damagecalc
scoreboard objectives remove wop.validitem
scoreboard objectives remove wop.sneaking

#tick
#normalite attack_speed
effect give @s[nbt={SelectedItem:{tag:{wopcooldown:0}}}] minecraft:weakness 1 100 true
title @s[nbt={SelectedItem:{tag:{wopcooldown:0}}}] actionbar ["",{"text":"worseoldpvp:","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/Metroite/datapacks/tree/master/worseoldpvp"},"hoverEvent":{"action":"show_text","value":"reverts the combat system to the worse one back in 1.8 (drop your tools once to update them)"}},{"text":" drop your selected item once, its too fast, the datapack has been uninstalled!"}]
execute at @a as @e[type=minecraft:item,distance=..4,nbt=!{Item:{tag:{wopcooldown:1}}}] run function worseoldpvp:cooldown/yes
#remove carrot_on_a_stick: also done in function cooldown/yes ^^
clear @a minecraft:carrot_on_a_stick{wopcarrot:1b}
#pigs should get their AI back
execute as @e[type=minecraft:pig,tag=wop.noai] at @s run function worseoldpvp:pigs/ai
