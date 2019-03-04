#calls ventilator and score-function
scoreboard players add _global_ v.ventilator 1
execute if score _global_ v.ventilator >= 9 v.ventilator run scoreboard players add _sound_ v.ventilator 1
execute as @e[tag=v.fan] at @s run function ventilators:ventilator
execute if score _sound_ v.ventilator >= 11 v.ventilator run scoreboard players set _sound_ v.ventilator 0
execute if score _global_ v.ventilator >= 9 v.ventilator run scoreboard players set _global_ v.ventilator 0

#calls ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat] at @s run function ventilators:ventilator_placement

#Batwing: loottable for all bats
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"ventilators:entities/bat"},limit=1,sort=random,tag=!ll.bat,tag=!ll.spawnbat] {DeathLootTable:"ventilators:entities/bat"}
