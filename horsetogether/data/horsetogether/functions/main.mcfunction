#if player is riding a saddled horse with armor
execute as @a[scores={ht.speed=1..}] at @s if entity @p[distance=0.5..10] run function horsetogether:player/rotation
#speed calculation
scoreboard players reset @a ht.speed
