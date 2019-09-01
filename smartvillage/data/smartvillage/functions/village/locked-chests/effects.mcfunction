execute as @a[tag=sv.chesteffect] at @s run playsound minecraft:block.chest.locked ambient @a ~ ~ ~ 0.5 1
title @a[tag=sv.chesteffect] actionbar ["",{"text":"Chest is locked!"}]
tag @a remove sv.chesteffect
