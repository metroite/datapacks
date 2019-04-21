particle minecraft:dragon_breath ~ ~1.5 ~ 0.1 0.1 0.1 0.5 100 force
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 2 0.7
summon lightning_bolt ~ ~500 ~
stopsound @a[distance=..64] weather minecraft:entity.lightning_bolt.thunder
spreadplayers ~ ~ 500 3000 false @s
particle minecraft:portal ~ ~1.5 ~ 0.1 0.1 0.1 1 100 force
