#Sapphire_ore effects
execute if block ~ ~ ~ minecraft:redstone_ore[lit=true] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
execute if block ~1 ~ ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~ ~1 minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~1 ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~-1 ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~-1 ~ ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~ ~-1 minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace

#prevents too many sapphire ores in close area
execute as @s[tag=!sp.so.placed] run kill @e[tag=sp.oredrop,distance=..128]

#remove setup
tag @s remove sp.so.setup
