advancement grant @p[distance=..8] only morsecode:build_receiver
particle minecraft:happy_villager ~ ~0.3 ~ 0 0 0 1 3 force
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1.7
tag @s add mc.receiver
tag @s add mc.determined
recipe give @p morsecode:mobile_receiver
