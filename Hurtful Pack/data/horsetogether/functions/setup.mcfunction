schedule function horsetogether:main50 27t
#scoreboards
scoreboard objectives add ht.rotation dummy
scoreboard objectives add ht.sneak minecraft.custom:minecraft.sneak_time
#optional
execute unless score $impact$ ht.rotation matches 0.. run scoreboard players set $impact$ ht.rotation 1
