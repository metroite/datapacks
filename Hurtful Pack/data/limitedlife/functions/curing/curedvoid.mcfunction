#effects while in air
effect give @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] minecraft:speed 5 0 true
playsound minecraft:entity.generic.big_fall voice @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] ~ ~ ~ 2 0.5
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.01 1 force
execute at @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 100 force
#further exterior effects with bats
execute as @e[tag=ll.curedvoid,type=minecraft:bat,sort=nearest,limit=1] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.01 1 force
execute at @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] at @e[tag=ll.curedvoid,type=minecraft:bat,sort=nearest,limit=1] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 100 force
execute at @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] as @e[sort=random,limit=20] if entity @s[type=minecraft:bat,tag=ll.curedvoid] as @a[scores={ll.deaths=10},limit=1,sort=random] at @s run function limitedlife:curing/curingvoid
execute at @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] run kill @e[tag=ll.curedvoid,type=minecraft:bat,sort=nearest,limit=1]

#remove tag ll.curedvoid
tag @s[nbt={OnGround:1b},nbt=!{ActiveEffects:[{Id:25b,Amplifier:-1b}]}] remove ll.curedvoid
