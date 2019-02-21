execute positioned ~-0.5 ~ ~-0.5 run scoreboard players add @e[dy=1,type=!minecraft:area_effect_cloud,type=!minecraft:player,limit=1,sort=nearest] v.ventilator 1
execute positioned ~-0.5 ~ ~-0.5 run data merge entity @e[dy=1,scores={v.ventilator=..300},type=!minecraft:area_effect_cloud,limit=1,sort=nearest] {Motion:[0.0d,0.5d,0.0d]}
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt=!{ActiveEffects:[{Id:25b}]}] run effect give @s[nbt={FallFlying:0b}] minecraft:levitation 1 8 true
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt=!{ActiveEffects:[{Id:25b}]}] run effect give @s[nbt={FallFlying:1b}] minecraft:slow_falling 1 0 true
