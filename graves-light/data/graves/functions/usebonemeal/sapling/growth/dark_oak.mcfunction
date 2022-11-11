fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:stripped_dark_oak_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=..30}] run fill ~3 ~ ~ ~-3 ~ ~ minecraft:stripped_dark_oak_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=30..40}] run fill ~2 ~ ~ ~-2 ~ ~ minecraft:stripped_dark_oak_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=..40}] run fill ~ ~ ~3 ~ ~ ~-3 minecraft:stripped_dark_oak_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=30..40}] run fill ~ ~ ~2 ~ ~ ~-2 minecraft:stripped_dark_oak_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=50..60}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:dark_oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=70..80}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:dark_oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=115..}] run fill ~4 ~ ~4 ~-4 ~2 ~-4 minecraft:dark_oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=90..115}] run fill ~6 ~ ~6 ~-6 ~ ~-6 minecraft:dark_oak_leaves[persistent=false] replace #graves:space
tag @s[scores={g.sapling_height=120..}] add g.sapling_kill
