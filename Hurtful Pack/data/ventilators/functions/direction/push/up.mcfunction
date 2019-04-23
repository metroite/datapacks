execute positioned ~-0.5 ~-1 ~-0.5 as @e[type=!minecraft:area_effect_cloud,dy=1,limit=1,sort=nearest] at @s run function ventilators:direction/push/motion/up
execute positioned ~-0.5 ~-1 ~-0.5 run effect give @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt={FallFlying:0b,OnGround:0b},nbt=!{ActiveEffects:[{Id:25b}]}] minecraft:levitation 1 220 true
execute positioned ~-0.5 ~-1 ~-0.5 as @a[gamemode=!spectator,dy=1,limit=1,sort=nearest,nbt={FallFlying:1b}] at @s if block ~ ~-0.35 ~ #ventilators:nocollision run tp @s ~ ~-0.125 ~
