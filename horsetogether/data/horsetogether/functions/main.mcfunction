#if player is riding a saddled horse with armor
execute as @a[tag=ht.riding] at @s if entity @p[distance=0.5..10] run function horsetogether:player/rotation
