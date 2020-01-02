#Sapphire_ore effects
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.3 0.3 0.3 0.05 10
#call cleanup
execute unless block ~ ~ ~ minecraft:lapis_ore run function sapphire:sapphire_ore/cleanup
