#effects while in air
effect give @s minecraft:slow_falling 1 0 true
particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.01 1 force
execute as @e[type=minecraft:bat,distance=..50,sort=nearest,limit=1,tag=ll.curedvoid] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 force
#end of effects at ground touch (possible chain revive)
execute at @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run function limitedlife:curing/void/effects_end
