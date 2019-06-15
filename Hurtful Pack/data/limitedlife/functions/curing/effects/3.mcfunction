#tired mechanic
tag @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..2] add ll.tired
#ll.cured mechanic to update-replace the helmet (no need to die)
tag @p[tag=ll.bat,distance=..48] add ll.cured
#the actual curing effect and particles
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 100 force
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
execute at @p[tag=ll.bat,scores={ll.deaths=1..},distance=..48] run playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
advancement grant @p[tag=ll.bat,distance=..48,scores={ll.deaths=1..}] only limitedlife:heal_max_health
scoreboard players remove @p[tag=ll.bat,distance=..48,scores={ll.deaths=1..}] ll.deaths 1
#calling curingvoid.mcfunction if curing process failed. Revives dead players.
execute if entity @e[tag=ll.bat,distance=..48,type=minecraft:bat] as @a[scores={ll.deaths=10},limit=1,sort=random] run function limitedlife:curing/curingvoid
#too far - exploding crystal
execute if entity @e[tag=ll.bat,distance=..48,type=minecraft:bat] at @e[type=minecraft:end_crystal,distance=..48,limit=1,sort=nearest] run summon minecraft:tnt ~ ~ ~
#emptying the cauldron and finally killing the ll.healingredient
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron
kill @s
