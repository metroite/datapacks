#what to do if clicked
spreadplayers ~ ~ 3 5 false @s
scoreboard players reset @s sv.stuck
playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 1 2
particle minecraft:cloud ~ ~1.8 ~ 0.1 0 0.1 0.1 10 force
title @s actionbar ["",{"text":"!"}]
