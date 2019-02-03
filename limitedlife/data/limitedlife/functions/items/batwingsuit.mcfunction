#hover mode
execute if block ~ ~-0.5 ~ #limitedlife:nocollision run scoreboard players reset @s ll.batwingflap
execute at @s[scores={ll.batwingflap=1..}] anchored eyes run playsound minecraft:entity.bat.takeoff ambient @a[distance=..24] ~ ~ ~ 0.1 0.76
execute at @s[scores={ll.batwingflap=1..}] anchored feet run particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.25 0.5 1 10 force
execute at @s[scores={ll.batwingflap=1..}] run effect give @s levitation 1 10 true
#effects
effect give @s[nbt=!{ActiveEffects:[{Id:28b}]}] minecraft:slow_falling 1 0 true
execute anchored eyes run particle minecraft:sweep_attack ^ ^ ^0.2 0 0 0 1 1 force
