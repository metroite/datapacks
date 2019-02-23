#call ventilator
execute as @e[tag=v.fan] at @s run function ventilators:ventilator

#calls ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat] at @s run function ventilators:ventilator_placement

#Batwing: loottable for all bats
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"ventilators:entities/bat"},limit=1,sort=random,tag=!ll.bat,tag=!ll.spawnbat] {DeathLootTable:"ventilators:entities/bat"}
