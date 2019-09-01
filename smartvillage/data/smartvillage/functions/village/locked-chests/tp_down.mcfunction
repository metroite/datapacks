execute as @a[tag=sv.chestsafed] at @s align xyz positioned ~0.5 ~1 ~0.5 run tp @s ~ ~-999.75 ~
tag @a remove sv.chestsafed
schedule function smartvillage:village/locked-chests/effects 1t
