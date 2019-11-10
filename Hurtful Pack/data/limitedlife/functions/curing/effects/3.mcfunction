#tired mechanic
execute as @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..2] run function limitedlife:curing/tired_calc
#player effects
execute as @p[tag=ll.bat,distance=..48,scores={ll.deaths=1..}] at @s run function limitedlife:curing/effects/3_player
#calling curingvoid.mcfunction if curing process failed. Revives dead players.
execute if entity @e[tag=ll.bat,distance=..48,type=minecraft:bat] as @a[scores={ll.deaths=10},limit=1,sort=random] run function limitedlife:curing/void/revive
#too far - exploding crystal
execute if entity @e[tag=ll.bat,distance=..48,type=minecraft:bat] at @e[type=minecraft:end_crystal,distance=..48,limit=1,sort=nearest] run summon minecraft:tnt ~ ~ ~
#emptying the cauldron and finally killing the ll.healingredient
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron
kill @s
