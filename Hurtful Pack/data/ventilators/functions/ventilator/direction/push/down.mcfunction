execute positioned ~-0.5 ~ ~-0.5 as @e[dy=1,type=!minecraft:area_effect_cloud,limit=1,sort=nearest,tag=!no] at @s run function ventilators:ventilator/direction/push/motion/down
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt=!{ActiveEffects:[{Id:25b}]}] run effect give @s[nbt={FallFlying:0b}] minecraft:levitation 1 8 true
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt=!{ActiveEffects:[{Id:25b}]}] run effect give @s[nbt={FallFlying:1b}] minecraft:slow_falling 1 0 true
