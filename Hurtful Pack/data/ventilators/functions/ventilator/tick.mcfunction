#effects and motion based on direction
execute if entity @s[tag=v.fansouth,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/south
execute if entity @s[tag=v.fanwest,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/west
execute if entity @s[tag=v.fannorth,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/north
execute if entity @s[tag=v.faneast,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/east

execute if entity @s[tag=v.fanup,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/up
execute if entity @s[tag=v.fandown,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/down

#sound
execute if entity @s[tag=!v.off] if score _global_ v.ventilator = 5 v.ventilator run playsound minecraft:entity.horse.breathe block @a ~ ~ ~ 0.1 0
execute if entity @s[tag=!v.off] if score _global_ v.ventilator = 9 v.ventilator run playsound minecraft:entity.horse.breathe block @a ~ ~ ~ 0.1 0

#powering the ventilators off
tag @s remove v.off
execute if entity @s[tag=!v.off] run function ventilators:ventilator/turnoff
execute if entity @s[tag=v.off] run particle minecraft:cloud ~ ~0.5 ~ 0.175 0.175 0.175 0.025 1

#kill v.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilator/cleanup
