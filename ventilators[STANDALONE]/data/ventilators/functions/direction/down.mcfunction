particle minecraft:poof ~ ~1 ~ 0.25 0.25 0.25 0.001 1 normal
execute positioned ~-0.5 ~ ~-0.5 run data merge entity @e[type=!minecraft:area_effect_cloud,dy=1,limit=1,sort=nearest] {Motion:[0.0d,0.5d,0.0d]}
execute positioned ~-0.5 ~ ~-0.5 run effect give @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt=!{ActiveEffects:[{Id:25b}]}] minecraft:levitation 1 15 true
