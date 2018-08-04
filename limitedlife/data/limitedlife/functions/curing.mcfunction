#particles and ll.cookingapple
tag @s[tag=ll.blockeddone] remove ll.blockeddone
scoreboard players add @s ll.cookingapple 1
data merge entity @s[scores={ll.cookingapple=1..10}] {PickupDelay:32767}
execute as @s[scores={ll.cookingapple=100..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.15 0 0.15 0.1 1
execute as @s[scores={ll.cookingapple=200..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.16 0 0.16 0.1 1
execute as @s[scores={ll.cookingapple=300..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.17 0 0.17 0.1 1
execute as @s[scores={ll.cookingapple=400..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.18 0 0.18 0.1 1
execute as @s[scores={ll.cookingapple=500..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.19 0 0.19 0.1 1
execute as @s[scores={ll.cookingapple=600..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.2 0 0.2 0.1 1
execute as @s[scores={ll.cookingapple=700..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.21 0 0.21 0.1 1
execute as @s[scores={ll.cookingapple=800..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.22 0 0.22 0.1 1
execute as @s[scores={ll.cookingapple=900..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.23 0 0.23 0.1 1
execute as @s[scores={ll.cookingapple=1000..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.24 0 0.24 0.1 1
execute as @s[scores={ll.cookingapple=1100..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.25 0 0.25 0.1 1
execute as @s[scores={ll.cookingapple=1200..}] run particle minecraft:bubble_pop ~ ~-0.12 ~ 0.26 0 0.26 0.1 1
execute as @s[scores={ll.cookingapple=1200..}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,tag=ll.heal] run particle minecraft:dragon_breath ~ ~1.5 ~ 0 0.25 0 0.0001 5
execute as @s[scores={ll.cookingapple=110..}] run playsound minecraft:ambient.underwater.loop.additions ambient @p ~ ~ ~ 0.05 2

#The beam
#summoning bat
execute as @s[scores={ll.cookingapple=2000}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] run summon bat ~ ~1 ~ {ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["ll.bat"],Silent:1b,Invulnerable:1b}
execute as @s[scores={ll.cookingapple=2000}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] run playsound minecraft:block.conduit.attack.target ambient @a[distance=..32] ~ ~ ~ 2 1.5
execute as @s[scores={ll.cookingapple=2000}] run summon endermite ~ ~0.8 ~ {Motion:[0.5d,0d,0.5d]}
execute as @s[scores={ll.cookingapple=2010}] run summon endermite ~ ~0.8 ~ {Motion:[0d,0d,-0.5d]}
execute as @s[scores={ll.cookingapple=2020}] run summon endermite ~ ~0.8 ~ {Motion:[-0.5d,0d,0d]}
execute at @e[tag=ll.bat] run particle minecraft:portal ~ ~1 ~ 0 0 0 0.2 1 force
#transfering ll.bat to player
execute at @e[tag=ll.bat,type=minecraft:bat] as @p[distance=..2,scores={ll.deaths=1..},tag=!ll.bat,nbt={ActiveEffects:[{Id:22b}]}] run tag @s add ll.bat
execute at @e[tag=ll.bat,type=minecraft:bat] as @p[distance=..2,scores={ll.deaths=1..},tag=!ll.bat,nbt={ActiveEffects:[{Id:22b}]}] run playsound minecraft:entity.player.levelup ambient @a[distance=..8] ~ ~ ~ 1 1.7
execute at @e[tag=ll.bat,type=minecraft:bat] as @p[distance=..2,scores={ll.deaths=1..},tag=ll.bat,nbt={ActiveEffects:[{Id:22b}]}] run kill @e[type=minecraft:bat,tag=ll.bat]
#performance? better with area_effect_clouds and less @e
execute as @e[type=minecraft:end_crystal] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,tag=ll.heal] as @e[tag=ll.bat,limit=1,sort=nearest] as @e[type=minecraft:end_crystal,limit=1,sort=nearest] at @s run summon armor_stand ~ ~0.5 ~-1 {NoGravity:1b,Tags:["ll.beam"],Small:1b,Invisible:1b,Marker:1b}

#particle and sound effects
execute as @s[scores={ll.cookingapple=2700..2705}] run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 100 force
execute as @s[scores={ll.cookingapple=2700..2705}] run playsound minecraft:block.conduit.ambient ambient @a[distance=..32] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=2800..2805}] run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 100 force
execute as @s[scores={ll.cookingapple=2800..2805}] run playsound minecraft:block.conduit.ambient ambient @a[distance=..32] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=2900..2905}] run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 100 force
execute as @s[scores={ll.cookingapple=2900..2905}] run playsound minecraft:block.conduit.ambient ambient @a[distance=..32] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=2999..3000}] run playsound minecraft:block.conduit.deactivate ambient @a[distance=..64] ~ ~ ~ 2 0.7
#curing effect if at ll.cookingapple=3000
#tired mechanic
execute as @s[scores={ll.cookingapple=3000}] at @s as @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..2] run tag @s add ll.tired
#ll.cured mechanic to update-replace the helmet (no need to die)
execute as @s[scores={ll.cookingapple=3000}] run tag @p[tag=ll.bat,limit=1,sort=nearest,nbt={ActiveEffects:[{Id:22b}]}] add ll.cured
#the actual curing effect
execute as @s[scores={ll.cookingapple=3000}] run scoreboard players remove @p[tag=ll.bat,limit=1,sort=nearest,nbt={ActiveEffects:[{Id:22b}]},scores={ll.deaths=1..}] ll.deaths 1
#failing conditions - exploding crystal
execute as @s[scores={ll.cookingapple=3000}] if entity @e[tag=ll.bat,limit=1,sort=nearest,type=minecraft:bat] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,tag=ll.heal] run summon minecraft:tnt ~ ~1 ~
execute as @s[scores={ll.cookingapple=3000}] as @e[tag=ll.bat,limit=1,sort=nearest] as @s[type=minecraft:player,nbt=!{ActiveEffects:[{Id:22b}]}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] run summon minecraft:tnt ~ ~1 ~
execute at @s[scores={ll.cookingapple=2100..}] unless entity @e[tag=ll.bat,limit=1,sort=nearest,distance=..32] positioned ~ ~1 ~ at @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..1] run summon minecraft:tnt ~ ~1 ~
#removing ll.bat and killing the bat
execute as @s[scores={ll.cookingapple=3000}] run tag @e[tag=ll.bat,limit=1,sort=nearest] remove ll.bat
execute as @s[scores={ll.cookingapple=3000}] run kill @e[tag=ll.bat,limit=1,sort=nearest,type=minecraft:bat]
#emptying the cauldron and finally killing the Bat Wing
execute as @s[scores={ll.cookingapple=3000}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron
kill @s[scores={ll.cookingapple=3000..}]

#make sure there is only one ll.cookingapple in the cauldron
execute as @s at @s as @e[distance=0.1..2,type=minecraft:item,tag=ll.heal] run tag @s add ll.blocked
