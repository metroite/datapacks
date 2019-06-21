#particles and ll.cooking
tag @s[tag=ll.blockeddone] remove ll.blockeddone
scoreboard players add @s ll.cooking 1
data merge entity @s[scores={ll.cooking=1}] {PickupDelay:32767,Age:0s}
execute if entity @s[scores={ll.cooking=1}] run advancement grant @p[distance=..16] only limitedlife:cooking
#bubbling effect: always present afterwards
execute if entity @s[scores={ll.cooking=100..}] run function limitedlife:curing/effects/0

#The beam: first effects
execute if entity @s[scores={ll.cooking=2000..2020}] run function limitedlife:curing/effects/1
execute at @e[tag=ll.bat,type=minecraft:player] run particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.25 0.1 0.25 1 force
execute at @e[tag=ll.bat,type=minecraft:bat] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.01 1 force
#transfering ll.bat to player
execute unless entity @s[scores={ll.cooking=..2080}] at @e[tag=ll.bat,type=minecraft:bat] run tag @p[distance=..2,scores={ll.deaths=1..},tag=!ll.bat,nbt={ActiveEffects:[{Id:22b}]}] add ll.bat
execute as @e[tag=ll.bat,type=minecraft:bat] at @s if entity @p[distance=..2,scores={ll.deaths=1..},tag=ll.bat,nbt={ActiveEffects:[{Id:22b}]}] run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 2 1.7
execute as @e[tag=ll.bat,type=minecraft:bat] at @s if entity @p[distance=..2,scores={ll.deaths=1..},tag=ll.bat,nbt={ActiveEffects:[{Id:22b}]}] run kill @s
#summoning ll.beam
execute at @e[type=minecraft:end_crystal,distance=..1] if entity @e[tag=ll.bat,distance=..64] run summon minecraft:area_effect_cloud ~ ~1.25 ~ {Tags:["ll.beam","ll.beam_l"],Duration:50}
execute at @e[type=minecraft:end_crystal,distance=..1] if entity @e[tag=ll.bat,distance=..64] run summon minecraft:area_effect_cloud ~ ~1.25 ~ {Tags:["ll.beam","ll.beam_r"],Duration:50}

#particle and sound effects: second effects
execute if entity @s[scores={ll.cooking=2700..2999}] run function limitedlife:curing/effects/2
execute if entity @s[scores={ll.cooking=2100..}] unless entity @e[tag=ll.bat,distance=..48] at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1] run summon minecraft:tnt ~ ~ ~

#curing effect if at ll.cooking=3000: third and last effect
execute if entity @s[scores={ll.cooking=3000}] run function limitedlife:curing/effects/3

#call unmetconditions
execute unless block ~ ~-1 ~ minecraft:cauldron[level=3] run function limitedlife:curing/unmetconditions
execute unless entity @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1,tag=!ll.tired] run function limitedlife:curing/unmetconditions
#make sure there is only one ll.healingredient in the cauldron
execute at @s if entity @e[distance=0.1..1,tag=ll.healingredient] run function limitedlife:curing/unmetconditions
