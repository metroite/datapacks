#summon g.l2t after explosion
execute as @e[tag=l2t.fused,nbt={Fuse:5s}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["g.l2t"],Duration:10}
#data merge every skull into "Skull Dust"
execute as @e[tag=g.l2t] at @s run function loud2x2tnt:graves_skull
#grant advancement
execute as @e[tag=l2t.advancement] at @s run advancement grant @p[distance=..8] only graves:blow_dust
execute as @e[tag=l2t.advancement] at @s if entity @p[distance=..8] run tag @s remove l2t.advancement
