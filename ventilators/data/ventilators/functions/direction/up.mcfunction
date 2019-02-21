execute if block ~ ~-1 ~ #ventilators:nocollision run function ventilators:direction/push/up
execute if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision positioned ~ ~-1 ~ run function ventilators:direction/push/up
execute if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision positioned ~ ~-2 ~ run function ventilators:direction/push/up
execute if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision if block ~ ~-4 ~ #ventilators:nocollision positioned ~ ~-3 ~ run function ventilators:direction/push/up
execute if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision if block ~ ~-4 ~ #ventilators:nocollision if block ~ ~-5 ~ #ventilators:nocollision positioned ~ ~-4 ~ run function ventilators:direction/push/up
execute if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision if block ~ ~-4 ~ #ventilators:nocollision if block ~ ~-5 ~ #ventilators:nocollision if block ~ ~-6 ~ #ventilators:nocollision positioned ~ ~-5 ~ run function ventilators:direction/push/up
execute positioned ~1 ~-12 ~1 run effect clear @a[dy=12,dx=-4,dz=-4,limit=1,sort=nearest,nbt={OnGround:1b},nbt={ActiveEffects:[{Id:25b,ShowParticles:0b,Amplifier:-36b}]}] minecraft:levitation
execute positioned ~-0.5 ~-15 ~-0.5 run effect clear @a[limit=1,sort=nearest,distance=..15,nbt={ActiveEffects:[{Id:25b,ShowParticles:0b,Amplifier:-36b,Duration:15}]}] minecraft:levitation

execute at @s[scores={v.ventilator=1}] if block ~ ~-1 ~ #ventilators:nocollision run function ventilators:direction/particle/up
execute at @s[scores={v.ventilator=2}] if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision positioned ~ ~-1 ~ run function ventilators:direction/particle/up
execute at @s[scores={v.ventilator=3}] if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision positioned ~ ~-2 ~ run function ventilators:direction/particle/up
execute at @s[scores={v.ventilator=4}] if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision if block ~ ~-4 ~ #ventilators:nocollision positioned ~ ~-3 ~ run function ventilators:direction/particle/up
execute at @s[scores={v.ventilator=5}] if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision if block ~ ~-4 ~ #ventilators:nocollision if block ~ ~-5 ~ #ventilators:nocollision positioned ~ ~-4 ~ run function ventilators:direction/particle/up
execute at @s[scores={v.ventilator=6}] if block ~ ~-1 ~ #ventilators:nocollision if block ~ ~-2 ~ #ventilators:nocollision if block ~ ~-3 ~ #ventilators:nocollision if block ~ ~-4 ~ #ventilators:nocollision if block ~ ~-5 ~ #ventilators:nocollision if block ~ ~-6 ~ #ventilators:nocollision positioned ~ ~-5 ~ run function ventilators:direction/particle/up

execute at @s[scores={v.sound=11}] run playsound minecraft:item.elytra.flying block @a ~ ~ ~ 0.1 2
