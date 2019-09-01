tp @s ~ ~1000 ~
tag @s add sv.chestsafed
tag @s add sv.chesteffect
scoreboard players reset @a sv.chestopened
schedule function smartvillage:village/locked-chests/tp_down 3t
