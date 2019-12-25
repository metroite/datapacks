execute store result score @s v.ventilator run data get entity @s Motion[2] 1000
scoreboard players remove @s v.ventilator 100
scoreboard players remove @s[type=minecraft:arrow] v.ventilator 200
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s v.ventilator
execute if entity @s[type=minecraft:horse,nbt={ArmorItem:{}}] run stopsound @a[distance=..16] * minecraft:entity.horse.armor
