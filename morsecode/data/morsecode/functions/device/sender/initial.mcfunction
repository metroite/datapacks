advancement grant @p[distance=..8] only morsecode:build_sender
particle minecraft:happy_villager ~ ~0.3 ~ 0 0 0 1 3 force
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 2
tag @s add mc.sender
tag @s add mc.determined
recipe give @p morsecode:mobile_receiver
