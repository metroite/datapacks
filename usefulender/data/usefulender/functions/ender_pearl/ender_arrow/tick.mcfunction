#particles
particle minecraft:portal ^ ^ ^ 0 0 0 0.001 1 force
#data get motion of arrow and replace it with ender_pearl
execute if entity @s[type=minecraft:arrow] run function usefulender:ender_pearl/ender_arrow/arrow
