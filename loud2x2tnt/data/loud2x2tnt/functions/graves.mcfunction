#summon g.l2t after explosion
execute as @e[type=minecraft:tnt,tag=l2t.fused,nbt={Fuse:5s}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["g.l2t"],Duration:10}
#data merge every skull into "Skull Dust"
execute as @e[type=minecraft:area_effect_cloud,tag=g.l2t] at @s run function loud2x2tnt:graves_skull
#grant advancement
execute as @e[type=minecraft:item,tag=l2t.advancement] at @s run advancement grant @p[distance=..8] only graves:blow_dust
execute as @e[type=minecraft:item,tag=l2t.advancement] at @s if entity @p[distance=..8] run tag @s remove l2t.advancement

#optional: no skull dust drop
execute if score $noskulldustfromgraves$ l2t.storeboard matches 1.. run kill @e[type=area_effect_cloud,tag=g.skull]
