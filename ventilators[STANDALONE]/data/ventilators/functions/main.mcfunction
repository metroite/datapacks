#call ventilator
execute as @e[tag=ll.fan] at @s run function ventilators:ventilator

#calls ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat] at @s run function ventilators:ventilator_placement

#Bat Wings: loottable for all bats
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"ventilators:entities/bat"},limit=1,sort=random,tag=!ll.bat,tag=!ll.spawnbat] {DeathLootTable:"ventilators:entities/bat"}

#calling collision:kill
execute as @e[tag=ll.collision] at @s run function ventilators:collision/kill
