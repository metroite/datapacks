particle minecraft:poof ~1 ~0.5 ~ 0.25 0.25 0.25 0.001 1 normal
execute positioned ~-0.5 ~ ~-0.5 run data merge entity @e[type=!minecraft:area_effect_cloud,dx=1,limit=1,sort=nearest] {Motion:[0.5d,0.0d,0.0d]}
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dx=1,limit=1,sort=nearest] at @s if block ~0.4 ~ ~ #ventilators:nocollision if block ~0.4 ~1 ~ #ventilators:nocollision if block ~0.4 ~1 ~0.3 #ventilators:nocollision if block ~0.4 ~1 ~-0.3 #ventilators:nocollision if block ~0.4 ~ ~0.3 #ventilators:nocollision if block ~0.4 ~ ~-0.3 #ventilators:nocollision run tp @s ~0.1 ~ ~
