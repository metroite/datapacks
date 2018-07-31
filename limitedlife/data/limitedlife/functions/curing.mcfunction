#particles and ll.cookingapple
scoreboard players add @s ll.cookingapple 1
data merge entity @s[scores={ll.cookingapple=1..10}] {PickupDelay:32767,tag:{display:{Name:"{\"text\":\"Dieses Item ist verbuggt\"}"}}}
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
execute as @s[scores={ll.cookingapple=1200..}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] run particle minecraft:dragon_breath ~ ~1.5 ~ 0 0.25 0 0.0001 5
execute as @s[scores={ll.cookingapple=110..}] run playsound minecraft:ambient.underwater.loop.additions ambient @p ~ ~ ~ 0.05 2

#The beam
#summoning bat
execute as @s[scores={ll.cookingapple=2000}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] run summon bat ~ ~1 ~ {ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}],Tags:["ll.bat"],Silent:1b,Invulnerable:1b}
execute as @s[scores={ll.cookingapple=2000}] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] run playsound minecraft:block.conduit.attack.target ambient @a[distance=..32] ~ ~ ~ 2 1.5
execute as @s[scores={ll.cookingapple=2000}] run summon endermite ~ ~0.25 ~
execute as @s[scores={ll.cookingapple=2000}] run summon endermite ~ ~0.25 ~
execute as @s[scores={ll.cookingapple=2000}] run summon endermite ~ ~0.25 ~
execute at @e[tag=ll.bat] run particle minecraft:portal ~ ~1 ~ 0 0 0 0.075 1 force
#transfering ll.bat to player
execute at @e[tag=ll.bat,type=minecraft:bat] as @p[distance=..2,scores={ll.deaths=1..},tag=!ll.bat] run tag @s add ll.bat
execute at @e[tag=ll.bat,type=minecraft:bat] as @p[distance=..2,scores={ll.deaths=1..},tag=ll.bat] run kill @e[type=minecraft:bat,tag=ll.bat]
#performance? better with area_effect_clouds and less @e
execute as @e[type=minecraft:end_crystal] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] as @e[tag=ll.bat,limit=1,sort=nearest] as @e[type=minecraft:end_crystal,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["ll.beam"],Small:1b,Invisible:1b,Marker:1b}
#goto function beam
execute as @e[type=minecraft:armor_stand,tag=ll.beam] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] at @s run function limitedlife:beam

#curing effect if at ll.cookingapple=3000
execute as @s[scores={ll.cookingapple=2700..2705}] run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 100 force
execute as @s[scores={ll.cookingapple=2700..2705}] run playsound minecraft:block.conduit.ambient ambient @a[distance=..32] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=2800..2805}] run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 100 force
execute as @s[scores={ll.cookingapple=2800..2805}] run playsound minecraft:block.conduit.ambient ambient @a[distance=..32] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=2900..2905}] run particle minecraft:dragon_breath ~ ~2 ~ 0.1 0.1 0.1 1 100 force
execute as @s[scores={ll.cookingapple=2900..2905}] run playsound minecraft:block.conduit.ambient ambient @a[distance=..32] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=2999..3000}] run playsound minecraft:block.conduit.deactivate ambient @a[distance=..64] ~ ~ ~ 2 0.7
execute as @s[scores={ll.cookingapple=3000}] at @s as @e[type=minecraft:end_crystal,limit=1,sort=nearest,distance=..2] run tag @s add ll.tired
execute as @s[scores={ll.cookingapple=3000}] run tag @e[tag=ll.bat,limit=1,sort=nearest] add cured
execute as @s[scores={ll.cookingapple=3000}] run scoreboard players remove @e[tag=ll.bat,limit=1,sort=nearest] ll.deaths 1
execute as @s[scores={ll.cookingapple=3000}] if entity @e[tag=ll.bat,limit=1,sort=nearest,type=minecraft:bat] at @e[type=minecraft:end_crystal,limit=1,sort=nearest] positioned ~ ~-1 ~ if entity @e[distance=..1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:golden_apple"}}] run summon minecraft:tnt ~ ~1 ~
execute as @s[scores={ll.cookingapple=3000}] run kill @e[tag=ll.bat,limit=1,sort=nearest,type=minecraft:bat]
execute as @s[scores={ll.cookingapple=3000}] run tag @e[tag=ll.bat,limit=1,sort=nearest] remove ll.bat
scoreboard players add @a[scores={lldeaths=..-1}] ll.deaths 1
execute as @s[scores={ll.cookingapple=3000}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:cauldron[level=0] replace minecraft:cauldron
kill @s[scores={ll.cookingapple=3000..}]
