#initial effects
scoreboard players remove @s ll.deaths 1
tag @s add ll.cured
#actual tp-command (first one is for chain a revive)
execute at @e[type=minecraft:bat,tag=ll.curedvoid,limit=1] run tp @s ~ ~ ~
execute at @e[scores={ll.cooking=3000},type=minecraft:item,tag=ll.healingredient,limit=1] at @e[type=minecraft:bat,tag=ll.bat,limit=1,sort=nearest] run tp @s ~ ~ ~
execute at @e[scores={ll.cooking=3000},type=minecraft:item,tag=ll.healingredient,limit=1] at @e[type=minecraft:bat,tag=ll.bat,limit=1,sort=nearest] run advancement grant @p[tag=!ll.cured,distance=..64] only limitedlife:revive_player
effect give @s minecraft:resistance 15 255 true
effect give @s minecraft:glowing 15 0 true
effect give @s minecraft:levitation 5 255 true
particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 1 100 force
summon minecraft:bat ~ ~1 ~ {ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["ll.curedvoid"],Silent:1b,Invulnerable:1b}
#Hopefully runs every possible sound file
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 2 0.5
#revoke end_gateway advancement if it wasn't achieved earlier
execute unless entity @s[scores={ll.end_gateway=1..}] run advancement revoke @s only minecraft:end/enter_end_gateway
execute unless entity @s[scores={ll.end_gateway=1..}] run scoreboard players reset @s ll.end_gateway
#further effects after the initial effects
tag @s add ll.curedvoid
