#regain ai
data merge entity @s {NoAI:0b}
tag @s remove wop.noai
#effect clear
effect clear @s minecraft:slowness
#remove from scoreboard
scoreboard players reset @s wop.damage
