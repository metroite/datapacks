execute at @e[tag=pa.test,distance=..0.75] run scoreboard players reset @s test
execute at @e[tag=pa.test,distance=..0.75] run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force
setblock ~ ~ ~ minecraft:white_stained_glass replace
kill @e[tag=pa.test,distance=..0.75]
