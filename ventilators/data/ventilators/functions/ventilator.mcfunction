#effects and motion based on direction
scoreboard players add @s[tag=!v.off] v.ventilator 1
scoreboard players add @s[tag=!v.off,scores={v.ventilator=1}] v.sound 1
execute as @s[tag=v.fansouth,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/south
execute as @s[tag=v.fanwest,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/west
execute as @s[tag=v.fannorth,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/north
execute as @s[tag=v.faneast,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/east

execute as @s[tag=v.fanup,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/up
execute as @s[tag=v.fandown,tag=!v.off] if block ~ ~ ~ minecraft:observer[powered=true] run function ventilators:direction/down

#powering the ventilators off
tag @s remove v.off

execute if block ~ ~ ~-1 minecraft:repeater[facing=north,powered=true] run tag @s add v.off
execute if block ~ ~ ~1 minecraft:repeater[facing=south,powered=true] run tag @s add v.off
execute if block ~-1 ~ ~ minecraft:repeater[facing=west,powered=true] run tag @s add v.off
execute if block ~1 ~ ~ minecraft:repeater[facing=east,powered=true] run tag @s add v.off

execute if block ~ ~ ~-1 minecraft:redstone_torch[lit=true] run tag @s add v.off
execute if block ~ ~ ~1 minecraft:redstone_torch[lit=true] run tag @s add v.off
execute if block ~-1 ~ ~ minecraft:redstone_torch[lit=true] run tag @s add v.off
execute if block ~1 ~ ~ minecraft:redstone_torch[lit=true] run tag @s add v.off
execute if block ~ ~-1 ~ minecraft:redstone_torch[lit=true] run tag @s add v.off

execute if block ~ ~ ~-1 minecraft:redstone_wall_torch[lit=true] unless block ~ ~ ~-1 minecraft:redstone_wall_torch[facing=north,lit=true] run tag @s add v.off
execute if block ~ ~ ~1 minecraft:redstone_wall_torch[lit=true] unless block ~ ~ ~1 minecraft:redstone_wall_torch[facing=south,lit=true] run tag @s add v.off
execute if block ~-1 ~ ~ minecraft:redstone_wall_torch[lit=true] unless block ~-1 ~ ~ minecraft:redstone_wall_torch[facing=west,lit=true] run tag @s add v.off
execute if block ~1 ~ ~ minecraft:redstone_wall_torch[lit=true] unless block ~1 ~ ~ minecraft:redstone_wall_torch[facing=east,lit=true] run tag @s add v.off
execute if block ~ ~1 ~ minecraft:redstone_wall_torch[lit=true] run tag @s add v.off
execute if block ~ ~-1 ~ minecraft:redstone_wall_torch[lit=true] run tag @s add v.off

execute at @s[tag=v.off] run particle minecraft:cloud ~ ~0.5 ~ 0.175 0.175 0.175 0.025 1

scoreboard players set @s[scores={v.sound=11..}] v.sound 0
scoreboard players set @s[scores={v.ventilator=9..}] v.ventilator 0

#kill v.fan armor_stands
execute unless block ~ ~ ~ minecraft:observer run function ventilators:ventilatorcleanup
