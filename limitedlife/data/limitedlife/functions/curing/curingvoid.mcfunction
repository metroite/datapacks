#initial effects
scoreboard players remove @s ll.deaths 1
tag @s add ll.cured
#actual tp-command
execute at @e[tag=ll.curedvoid,type=minecraft:bat,limit=1] run tp @s ~ ~ ~
execute at @e[scores={ll.cooking=3000},type=minecraft:item,tag=ll.healingredient,limit=1] at @e[tag=ll.bat,limit=1,sort=nearest,type=minecraft:bat] run tp @s ~ ~ ~
effect give @s minecraft:resistance 10 255 true
effect give @s minecraft:glowing 10 0 true
effect give @s minecraft:levitation 5 255 true
effect give @s minecraft:slow_falling 8 0 true
particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 1 100 force
summon minecraft:bat ~ ~1 ~ {ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["ll.curedvoid"],Silent:1b,Invulnerable:1b}
#Hopefully runs every possible sound file
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a[distance=..64] ~ ~ ~ 2 0.5


#further effects after the initial effects
tag @s add ll.curedvoid
