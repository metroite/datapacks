execute unless entity @s[dx=5,dy=5,dz=-5] run tp @s 3.0 3 -32.0
execute if entity @s[dx=5,dy=5,dz=-5] run effect give @s[nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 10 255 true
execute if entity @s[dx=5,dy=5,dz=-5] run effect give @s[nbt=!{ActiveEffects:[{Id:20b}]}] minecraft:wither 10 0 true
title @s actionbar ["",{"text":"Th","bold":true,"color":"dark_blue"},{"text":"e","bold":true,"obfuscated":true,"color":"dark_blue"},{"text":" V","bold":true,"color":"dark_blue"},{"text":"o","bold":true,"obfuscated":true,"color":"dark_blue"},{"text":"id","bold":true,"color":"dark_blue"}]
