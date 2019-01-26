#kill too many SU-entities
execute as @s[tag=sp.so.setup] run kill @e[tag=sp.so.setup,distance=0.5..3]
#Sapphire_ore effects
execute at @s[tag=!sp.so.setup] if block ~ ~ ~ minecraft:redstone_ore[lit=true] run particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 1
execute at @s[tag=!sp.so.setup] if block ~1 ~ ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute at @s[tag=!sp.so.setup] if block ~ ~ ~1 minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute at @s[tag=!sp.so.setup] if block ~ ~1 ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute at @s[tag=!sp.so.setup] if block ~ ~-1 ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute at @s[tag=!sp.so.setup] if block ~-1 ~ ~ minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace
execute at @s[tag=!sp.so.setup] if block ~ ~ ~-1 minecraft:water unless block ~ ~ ~ minecraft:redstone_ore[lit=true] run setblock ~ ~ ~ minecraft:redstone_ore[lit=true] replace

#prevents too many sapphire ores in close area
execute as @s[tag=!sp.so.placed] run kill @e[tag=sp.oredrop,distance=..128]

#remove setup
tag @e[distance=..0.5,tag=sp.sapphire_ore] remove sp.so.setup
