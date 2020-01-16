tag @s add wt.traded
playsound minecraft:entity.villager.yes hostile @a ~ ~ ~ 2 1.5
particle minecraft:happy_villager ~ ~1.5 ~ 0.25 0.1 0.25 1 3 force
advancement grant @p[team=wt.friendly,distance=..6] only witchtrading:risky_business
