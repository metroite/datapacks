#the actual curing effect and particles
particle minecraft:end_rod ~ ~ ~ 0 0 0 1 100 force
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
playsound minecraft:entity.dolphin.ambient_water voice @a ~ ~ ~ 1.5 0.5
advancement grant @s only limitedlife:heal_max_health
scoreboard players remove @s ll.deaths 1
#replace/update glass-helmet
function limitedlife:helmet/helmet
