#custom damage system as Mojang decided to remove player data modification
scoreboard players remove @s to.damage 1
playsound minecraft:item.flintandsteel.use ambient @a ~ ~ ~ 1 1
title @s actionbar ["",{"text":"Durability: "},{"score":{"name":"@s","objective":"to.damage"}},{"text":" / "},{"score":{"name":"$uses$","objective":"to.damage"}}]
execute if score @s to.damage matches ..0 run function torchout:torch/flint_and_steel/break
