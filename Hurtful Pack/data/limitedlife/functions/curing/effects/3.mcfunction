#tired mechanic
execute as @e[type=minecraft:end_crystal,distance=..0.05,limit=1] run function limitedlife:curing/tired/start
#player effects
execute as @p[distance=..48,scores={ll.deaths=1..},tag=ll.bat] at @s run function limitedlife:curing/effects/3_player
#if still a bat -> revive dead players.
execute as @e[distance=..48,tag=ll.bat,limit=1,sort=nearest] if entity @s[type=minecraft:bat] as @a[limit=1,sort=random,scores={ll.deaths=10}] run function limitedlife:curing/void/revive
execute as @e[distance=..48,tag=ll.bat,limit=1,sort=nearest] if entity @s[type=minecraft:bat] at @e[type=minecraft:end_crystal,distance=..0.05,limit=1] run summon minecraft:tnt ~ ~ ~
#emptying the cauldron and finally killing the ll.healingredient
execute at @s run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron
kill @s
