execute at @e[tag=pa.test,distance=..0.75] run scoreboard players reset @s test
execute at @e[tag=pa.test,distance=..0.75] run particle minecraft:barrier ~ ~0.5 ~ 0 0 0 1 1 force
execute if entity @e[tag=pa.test,distance=..0.75] run tellraw @s ["",{"text":"successful","color":"red","bold":"true"}]
kill @e[tag=pa.test,distance=..0.75]

execute if entity @s[scores={test=1..7}] run setblock ~ ~ ~ minecraft:red_stained_glass replace
execute if entity @s[scores={test=8..14}] run setblock ~ ~ ~ minecraft:orange_stained_glass replace
execute if entity @s[scores={test=15..21}] run setblock ~ ~ ~ minecraft:yellow_stained_glass replace
execute if entity @s[scores={test=22..28}] run setblock ~ ~ ~ minecraft:green_stained_glass replace
execute if entity @s[scores={test=29..35}] run setblock ~ ~ ~ minecraft:blue_stained_glass replace
