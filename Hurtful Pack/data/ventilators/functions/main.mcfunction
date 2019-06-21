#calls ventilator and handles scores for particles and effects
scoreboard players add _global_ v.ventilator 1
execute as @e[tag=v.fan] at @s run function ventilators:ventilator/tick
execute if score _global_ v.ventilator >= 9 v.ventilator run scoreboard players set _global_ v.ventilator 0

#calls ventilator_placement
execute as @e[type=minecraft:item,tag=ll.spawnbat] at @s run function ventilators:ventilator/placement

#kills tortured bats
kill @e[type=minecraft:bat,tag=ll.spawnbat,nbt={BatFlags:1b}]
