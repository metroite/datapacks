particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 1 100 force
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 2 0.7
summon lightning_bolt ~ ~500 ~
stopsound @a[distance=..64] weather minecraft:entity.lightning_bolt.thunder
tag @s add ue.calculated
execute as @a if score @s ue.uuid = @e[tag=ue.calculated,limit=1] ue.uuid at @s run function usefulender:ender_pearl/dragon_egg_success
#prevent ender pearl from teleporting player back
kill @s
