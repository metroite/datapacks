#take off
execute at @s[nbt={FallFlying:1b},scores={ll.batwingflap=1..}] if block ~ ~-0.5 ~ #limitedlife:nocollision if block ~ ~-1 ~ #limitedlife:nocollision run tp @s ~ ~-0.5 ~
execute if block ~ ~-0.5 ~ #limitedlife:nocollision run scoreboard players reset @s ll.batwingflap
tag @s[scores={ll.batwingflap=1..}] add ll.batwingflap
execute at @s[tag=ll.batwingflap,nbt={FallFlying:0b}] anchored eyes run playsound minecraft:entity.bat.takeoff ambient @a[distance=..24] ~ ~ ~ 0.1 0.76
execute at @s[tag=ll.batwingflap,nbt={FallFlying:0b}] anchored feet run particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.25 0.5 5 1 force
execute at @s[tag=ll.batwingflap,nbt={FallFlying:0b}] run effect give @s levitation 1 90 true
effect clear @s[nbt={FallFlying:0b,OnGround:0b,ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Id:25b,Amplifier:90b}]}] minecraft:levitation
tag @s[nbt={FallFlying:0b,OnGround:0b}] remove ll.batwingflap
#effects
effect give @s[nbt=!{ActiveEffects:[{Id:28b}]}] minecraft:slow_falling 1 0 true
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^0.2 0 0 0 1 1 force
