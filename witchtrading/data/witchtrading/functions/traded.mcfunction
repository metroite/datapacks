playsound minecraft:entity.villager.yes neutral @a[distance=..12] ~ ~ ~ 2 1.5
particle minecraft:happy_villager ~ ~1.5 ~ 0.25 0.1 0.25 1 3 force
advancement grant @p[team=friendly,distance=..6,scores={witchtrading.twv=1..}] only witchtrading:root
