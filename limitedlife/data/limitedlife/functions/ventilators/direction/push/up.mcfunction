execute positioned ~-0.5 ~-1 ~-0.5 run data merge entity @e[type=!minecraft:area_effect_cloud,dy=1,limit=1,sort=nearest] {Motion:[0.0d,-0.5d,0.0d]}
execute positioned ~-0.5 ~-1 ~-0.5 run effect give @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt={OnGround:0b},nbt=!{ActiveEffects:[{Id:25b}]}] minecraft:levitation 1 220 true
