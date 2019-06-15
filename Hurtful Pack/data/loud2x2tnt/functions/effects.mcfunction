#effects
particle minecraft:angry_villager ~ ~0.1 ~ 0 0.2 0 1 1 force
tag @s add l2t.fused
execute if entity @s[tag=!l2t.longfuse] run advancement grant @p[distance=..8] only loud2x2tnt:blow_up
#LOUD tnt
execute if entity @s[nbt={Fuse:3s}] run function loud2x2tnt:explosion

#Make Fuse longer for l2t.tagged
data merge entity @s[tag=!l2t.longfuse] {Tags:["l2t.longfuse"],Fuse:300s}
