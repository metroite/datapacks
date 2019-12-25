#-x -z +y
execute if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~1 ~-1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~1 minecraft:tnt if block ~1 ~-1 ~1 minecraft:tnt run function loud2x2tnt:initial
#-x -z -y
execute unless entity @s[tag=l2t.fused] if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~1 ~1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~1 minecraft:tnt if block ~1 ~1 ~1 minecraft:tnt run function loud2x2tnt:initial
#-x +z +y
execute unless entity @s[tag=l2t.fused] if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~1 ~-1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~-1 minecraft:tnt if block ~1 ~-1 ~-1 minecraft:tnt run function loud2x2tnt:initial
#-x +z -y
execute unless entity @s[tag=l2t.fused] if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~1 ~1 ~ minecraft:tnt if block ~1 ~ ~ minecraft:tnt if block ~1 ~ ~-1 minecraft:tnt if block ~1 ~1 ~-1 minecraft:tnt run function loud2x2tnt:initial
#+x +z +y
execute unless entity @s[tag=l2t.fused] if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~-1 ~-1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~-1 minecraft:tnt if block ~-1 ~-1 ~-1 minecraft:tnt run function loud2x2tnt:initial
#+x +z -y
execute unless entity @s[tag=l2t.fused] if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~-1 minecraft:tnt if block ~ ~ ~-1 minecraft:tnt if block ~-1 ~1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~-1 minecraft:tnt if block ~-1 ~1 ~-1 minecraft:tnt run function loud2x2tnt:initial
#+x -z +y
execute unless entity @s[tag=l2t.fused] if block ~ ~-1 ~ minecraft:tnt if block ~ ~-1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~-1 ~-1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~1 minecraft:tnt if block ~-1 ~-1 ~1 minecraft:tnt run function loud2x2tnt:initial
#+x -z -y
execute unless entity @s[tag=l2t.fused] if block ~ ~1 ~ minecraft:tnt if block ~ ~1 ~1 minecraft:tnt if block ~ ~ ~1 minecraft:tnt if block ~-1 ~1 ~ minecraft:tnt if block ~-1 ~ ~ minecraft:tnt if block ~-1 ~ ~1 minecraft:tnt if block ~-1 ~1 ~1 minecraft:tnt run function loud2x2tnt:initial

execute unless entity @s[tag=l2t.fused] run particle minecraft:barrier ~ ~0.5 ~
