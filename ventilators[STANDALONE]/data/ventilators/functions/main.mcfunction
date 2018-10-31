#call ventilator
execute as @e[tag=ll.fan] at @s run function ventilators:ventilator

#calls ventilator_placement
execute as @e[type=minecraft:bat,tag=ll.spawnbat,tag=ll.valid] at @s run function ventilators:ventilator_placement
#kill bats, prevent looping
execute as @e[type=minecraft:bat,tag=ll.spawnbat] run tp 0 -200 0
execute as @e[type=minecraft:bat,tag=ll.spawnbat] run kill @s

#Bat Wings: loottable for all bats
data merge entity @e[type=minecraft:bat,nbt=!{DeathLootTable:"ventilators:entities/bat"},limit=1,sort=random,tag=!ll.bat,tag=!ll.spawnbat] {DeathLootTable:"ventilators:entities/bat"}
