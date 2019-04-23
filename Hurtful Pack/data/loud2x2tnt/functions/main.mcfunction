#detects if tnt is placed 2x2x2. Execution for each of the tnt:
#-x -z +y
execute as @e[type=minecraft:tnt] at @s if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~1 ~-1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~1 minecraft:tnt if block ~1 ~-1 ~1 minecraft:tnt run function loud2x2tnt:effects
#-x -z -y
execute as @e[type=minecraft:tnt] at @s if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~1 ~1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~1 minecraft:tnt if block ~1 ~1 ~1 minecraft:tnt run function loud2x2tnt:effects
#-x +z +y
execute as @e[type=minecraft:tnt] at @s if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~1 ~-1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~-1 minecraft:tnt if block ~1 ~-1 ~-1 minecraft:tnt run function loud2x2tnt:effects
#-x +z -y
execute as @e[type=minecraft:tnt] at @s if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~1 ~1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~-1 minecraft:tnt if block ~1 ~1 ~-1 minecraft:tnt run function loud2x2tnt:effects
#+x +z +y
execute as @e[type=minecraft:tnt] at @s if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~-1 ~-1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~-1 minecraft:tnt if block ~-1 ~-1 ~-1 minecraft:tnt run function loud2x2tnt:effects
#+x +z -y
execute as @e[type=minecraft:tnt] at @s if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~-1 ~1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~-1 minecraft:tnt if block ~-1 ~1 ~-1 minecraft:tnt run function loud2x2tnt:effects
#+x -z +y
execute as @e[type=minecraft:tnt] at @s if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~-1 ~-1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~1 minecraft:tnt if block ~-1 ~-1 ~1 minecraft:tnt run function loud2x2tnt:effects
#+x -z -y
execute as @e[type=minecraft:tnt] at @s if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~-1 ~1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~1 minecraft:tnt if block ~-1 ~1 ~1 minecraft:tnt run function loud2x2tnt:effects
