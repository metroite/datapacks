#on ground touch (possible chain revive)
playsound minecraft:entity.generic.big_fall voice @a ~ ~ ~ 2 0.5
effect give @s minecraft:speed 5 1 true
particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 100 force
execute at @e[type=minecraft:bat,distance=..64,sort=nearest,limit=1,tag=ll.curedvoid] run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 0.5 100 force
execute as @e[distance=..300,sort=random,limit=20] if entity @s[type=minecraft:bat,tag=ll.curedvoid] as @a[limit=1,sort=random,scores={ll.deaths=10}] at @s run function limitedlife:curing/void/revive
#remove tag ll.curedvoid
kill @e[type=minecraft:bat,distance=..64,sort=nearest,limit=1,tag=ll.curedvoid]
tag @s remove ll.curedvoid
