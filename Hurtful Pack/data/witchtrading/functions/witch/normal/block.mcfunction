team leave @s
team leave @a[distance=..12,team=wt.friendly]
tag @s add wt.blocked
playsound minecraft:entity.villager.no hostile @a ~ ~ ~ 2 1.5
particle minecraft:angry_villager ~ ~1.5 ~ 0.25 0.1 0.25 1 3 force
execute as @e[type=minecraft:villager,distance=..2,team=wt.friendly] run function witchtrading:witch/villager/kill
