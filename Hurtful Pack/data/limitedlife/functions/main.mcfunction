#feature-compatibility: ventilators
execute unless score 9 v.ventilator = 9 v.ventilator as @e[type=minecraft:item,tag=ll.spawnbat] at @s run function limitedlife:items/batwing_recover

#batwing eating
execute if entity @p[scores={ll.batwingeat=1..}] run function limitedlife:items/batwing_eat_tick

#reviving effects
execute as @a[tag=ll.curedvoid] at @s run function limitedlife:curing/void/effects
#curing item and process
execute as @e[type=minecraft:item,tag=ll.healingredient] at @s align xyz positioned ~0.5 ~1 ~0.5 run function limitedlife:curing/curing

#calling batwingsuit
execute as @a[nbt={FallFlying:1b},tag=ll.batwingwear] at @s run function limitedlife:items/batwingsuit
execute as @a[tag=ll.batwingflap] at @s run function limitedlife:items/batwingsuit
scoreboard players reset @a ll.batwingflap

##winged arrow
#tick player and determine bow or crossbow
execute if score $wingedarrows$ ll.wa.shoot matches 1.. as @a at @s run function limitedlife:wingedarrow/determine
#tick arrow
execute if score $wingedarrows$ ll.wa.shoot matches 1.. as @e[type=minecraft:arrow,tag=ll.wa.arrow] at @s run function limitedlife:wingedarrow/arrow
