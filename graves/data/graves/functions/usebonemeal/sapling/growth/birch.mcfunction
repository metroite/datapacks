fill ~ ~ ~ ~ ~ ~ minecraft:stripped_birch_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_rng=6}] run data merge entity @s {Motion:[0.0,0.5,0.0]}
execute at @s[scores={g.sapling_rng=12}] run data merge entity @s {Motion:[0.0,0.5,0.0]}
execute at @s[scores={g.sapling_height=85..100}] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:birch_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=100..}] run fill ~2 ~ ~2 ~-2 ~1 ~-2 minecraft:birch_leaves[persistent=false] replace #graves:space
tag @s[scores={g.sapling_height=110..}] add g.sapling_kill
