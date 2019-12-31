tag @s add l2t.fused
execute if entity @s[tag=!l2t.longfuse] run advancement grant @p[distance=..8] only loud2x2tnt:blow_up
#Make Fuse longer for l2t.tagged
data merge entity @s[tag=!l2t.longfuse] {Tags:["l2t.longfuse"],Fuse:300s}
