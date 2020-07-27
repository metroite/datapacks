data merge entity @s {NoGravity:1b}
execute unless entity @s[tag=g.adjust] align y run tp @s ~ ~-1.42 ~
execute if entity @s[tag=g.adjust] positioned ~ ~1 ~ align y run tp @s ~ ~-1.42 ~
tag @s remove g.gravity
tag @s add g.nogravity
