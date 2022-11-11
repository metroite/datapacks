execute at @s[scores={g.sapling_height=..30}] run fill ~6 ~ ~ ~6 ~ ~ minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=30..50}] run fill ~4 ~ ~ ~4 ~ ~ minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=50..60}] run fill ~2 ~ ~ ~2 ~ ~ minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=..20}] run fill ~5 ~ ~ ~5 ~ ~ minecraft:muddy_mangrove_roots replace #graves:space

execute at @s[scores={g.sapling_height=..30}] run fill ~-6 ~ ~ ~-6 ~ ~ minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=30..50}] run fill ~-4 ~ ~ ~-4 ~ ~ minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=50..60}] run fill ~-2 ~ ~ ~-2 ~ ~ minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=..20}] run fill ~-5 ~ ~ ~-5 ~ ~ minecraft:muddy_mangrove_roots replace #graves:space

execute at @s[scores={g.sapling_height=..30}] run fill ~ ~ ~6 ~ ~ ~6 minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=30..50}] run fill ~ ~ ~4 ~ ~ ~4 minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=50..60}] run fill ~ ~ ~2 ~ ~ ~2 minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=..20}] run fill ~ ~ ~5 ~ ~ ~5 minecraft:muddy_mangrove_roots replace #graves:space

execute at @s[scores={g.sapling_height=..30}] run fill ~ ~ ~-6 ~ ~ ~-6 minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=30..50}] run fill ~ ~ ~-4 ~ ~ ~-4 minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=50..60}] run fill ~ ~ ~-2 ~ ~ ~-2 minecraft:mangrove_roots replace #graves:space
execute at @s[scores={g.sapling_height=..20}] run fill ~ ~ ~-5 ~ ~ ~-5 minecraft:muddy_mangrove_roots replace #graves:space

execute at @s[scores={g.sapling_height=50..70}] run fill ~2 ~ ~ ~-2 ~ ~ minecraft:stripped_mangrove_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=60..90}] run fill ~ ~ ~1 ~ ~ ~-1 minecraft:stripped_mangrove_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=90..115}] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_mangrove_log[axis=y] replace #graves:space

execute at @s[scores={g.sapling_height=90..}] run fill ^5 ^-1 ^ ^5 ^-1 ^-5 minecraft:vine[west=true] replace #graves:space
execute at @s[scores={g.sapling_height=90..}] run fill ^-5 ^-1 ^ ^-5 ^-1 ^-5 minecraft:vine[east=true] replace #graves:space
execute at @s[scores={g.sapling_height=90..}] run fill ~ ~-1 ~5 ~ ~-1 ~5 minecraft:vine[north=true] replace #graves:space
execute at @s[scores={g.sapling_height=90..}] run fill ~ ~-1 ~-5 ~ ~-1 ~-5 minecraft:vine[south=true] replace #graves:space

execute at @s[scores={g.sapling_height=60..75}] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:mangrove_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=90..92}] run fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 minecraft:mangrove_propagule[hanging=true] replace #graves:space
execute at @s[scores={g.sapling_height=90..105}] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:mangrove_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=115..}] run fill ~4 ~ ~4 ~-4 ~2 ~-4 minecraft:mangrove_leaves[persistent=false] replace #graves:space
tag @s[scores={g.sapling_height=120..}] add g.sapling_kill
