#Sapphire_ore effects
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
execute if block ~1 ~ ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~ ~1 minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~1 ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~-1 ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~-1 ~ ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute if block ~ ~ ~-1 minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace

#prevents too many sapphire ores in close area
kill @e[tag=sp.oredrop,distance=..128]