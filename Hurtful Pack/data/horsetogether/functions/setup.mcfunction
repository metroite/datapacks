schedule function horsetogether:main50 27t
#scoreboards
scoreboard objectives add ht.rotation dummy
scoreboard objectives add ht.speed minecraft.custom:minecraft.horse_one_cm
execute unless score $impact$ ht.rotation matches 0.. run scoreboard players set $impact$ ht.rotation 1
