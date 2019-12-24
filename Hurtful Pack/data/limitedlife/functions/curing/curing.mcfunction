#particles and ll.cooking
execute align xz positioned ~0.5 ~ ~0.5 run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.15 0 0.15 0.1 1
playsound minecraft:ambient.underwater.loop.additions ambient @a ~ ~ ~ 0.5 2
tag @s[tag=ll.blockeddone] remove ll.blockeddone
scoreboard players add @s ll.cooking 1
data merge entity @s[scores={ll.cooking=1}] {PickupDelay:32767,Age:0s}
execute if score @s ll.cooking matches 1 run advancement grant @p[distance=..16] only limitedlife:cooking
#bubbling effect increase
execute if score @s ll.cooking matches 100.. align xz positioned ~0.5 ~ ~0.5 run function limitedlife:curing/effects/0

#endermites and spawn bat
execute if score @s ll.cooking matches 2000..2020 run function limitedlife:curing/effects/1
#particles
execute if score @s ll.cooking matches 2000.. at @p[distance=..50,tag=ll.bat] run particle minecraft:end_rod ~ ~1 ~ 0.1 0.25 0.1 0.1 1 force
execute if score @s ll.cooking matches 2000.. at @e[type=minecraft:bat,distance=..50,limit=1,sort=nearest,tag=ll.bat] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.01 1 force
#transfering ll.bat to player
execute if score @s ll.cooking matches 2100.. as @e[type=minecraft:bat,distance=..50,limit=1,sort=nearest,tag=ll.bat] at @s if entity @p[distance=..1.5,scores={ll.deaths=1..},tag=!ll.bat,nbt={ActiveEffects:[{Id:22b}]}] run function limitedlife:curing/beam/transfer
#ll.bat is BeamTarget of end_crystal
execute if score @s ll.cooking matches 2000.. run function limitedlife:curing/beam/tick

#particle and sound effects: second effects
execute if score @s ll.cooking matches 2700..2999 run function limitedlife:curing/effects/2
execute if score @s ll.cooking matches 2100.. unless entity @e[distance=..48,tag=ll.bat] at @e[type=minecraft:end_crystal,distance=..1,limit=1,sort=nearest] run summon minecraft:tnt ~ ~ ~

#curing effect if at ll.cooking=3000: third and last effect
execute if score @s ll.cooking matches 3000 run function limitedlife:curing/effects/3

#call unmetconditions
execute unless block ~ ~-1 ~ minecraft:cauldron[level=3] run function limitedlife:curing/unmetconditions
execute unless entity @e[type=minecraft:end_crystal,distance=..1,tag=!ll.tired] run function limitedlife:curing/unmetconditions
#make sure there is only one ll.healingredient in the cauldron
execute at @s if entity @e[type=minecraft:item,distance=0.1..1,tag=ll.healingredient] run function limitedlife:curing/unmetconditions
