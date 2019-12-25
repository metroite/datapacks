#effects
particle minecraft:angry_villager ~ ~0.1 ~ 0 0.2 0 1 1 force
#LOUD tnt
tag @s[nbt={Fuse:5s}] remove l2t.fused
execute if entity @s[nbt={Fuse:3s}] run function loud2x2tnt:explosion
