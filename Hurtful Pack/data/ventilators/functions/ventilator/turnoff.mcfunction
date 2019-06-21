#conditions to turn ventilator off
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
