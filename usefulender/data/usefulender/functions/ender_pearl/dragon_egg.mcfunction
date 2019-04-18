particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 1 100 force
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 2 0.7
summon lightning_bolt ~ ~500 ~
stopsound @a[distance=..64] weather minecraft:entity.lightning_bolt.thunder
execute as @p[scores={ue.pearlthrow=1..}] at @s run function usefulender:ender_pearl/dragon_egg_success
#prevent ender pearl from teleporting player back
tag @s add ue.calculated
kill @s
