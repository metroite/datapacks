#revoke end_gateway if it should be revoked
execute if entity @s[scores={ll.sincedeath=..9}] store success score @s ll.end_gateway run execute if entity @s[advancements={minecraft:end/enter_end_gateway=true}]
#contiue in voidcuring
#effects and tp back
execute unless entity @s[dx=5,dy=5,dz=-5] if entity @s[scores={ll.sincedeath=10..}] run tp @s 3.0 3 -32.0
execute if entity @s[dx=5,dy=5,dz=-5] run effect give @s[nbt=!{ActiveEffects:[{Id:10b}]}] minecraft:regeneration 10 255 true
execute if entity @s[dx=5,dy=5,dz=-5] run effect give @s[nbt=!{ActiveEffects:[{Id:11b}]}] minecraft:resistance 10 255 true
title @s actionbar ["",{"text":"Th","bold":true,"color":"dark_blue"},{"text":"e","bold":true,"obfuscated":true,"color":"dark_blue"},{"text":" V","bold":true,"color":"dark_blue"},{"text":"o","bold":true,"obfuscated":true,"color":"dark_blue"},{"text":"id","bold":true,"color":"dark_blue"}]
