#powering the ventilators off
tag @s remove v.off
execute if entity @s[tag=!v.off] run function ventilators:ventilator/turnoff
execute if entity @s[tag=v.off] run particle minecraft:sweep_attack ~ ~0.5 ~ 0.175 0.175 0.175 0.025 10
#kill v.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilator/cleanup
