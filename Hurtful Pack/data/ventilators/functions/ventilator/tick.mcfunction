#effects and motion based on direction
execute if entity @s[tag=v.fansouth] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/south
execute if entity @s[tag=v.fanwest] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/west
execute if entity @s[tag=v.fannorth] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/north
execute if entity @s[tag=v.faneast] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/east

execute if entity @s[tag=v.fanup] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/up
execute if entity @s[tag=v.fandown] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:ventilator/direction/down

#sound
execute if entity @s if score _global_ v.ventilator = 5 v.ventilator run playsound minecraft:entity.horse.breathe block @a ~ ~ ~ 0.1 0
execute if entity @s if score _global_ v.ventilator = 9 v.ventilator run playsound minecraft:entity.horse.breathe block @a ~ ~ ~ 0.1 0
