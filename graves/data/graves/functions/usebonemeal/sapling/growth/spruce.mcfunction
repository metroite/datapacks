fill ~ ~ ~ ~ ~ ~ minecraft:stripped_spruce_log[axis=y] replace
execute at @s[scores={g.sapling_height=..70}] run fill ^ ^-1 ^-1 ^ ^-1 ^-1 minecraft:stripped_spruce_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_height=55..60}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=60..65}] run fill ~5 ~ ~5 ~-5 ~ ~-5 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=65..67}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=80..85}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=85..90}] run fill ~5 ~ ~5 ~-5 ~ ~-5 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=90..92}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=115..118}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=114..118}] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=118..123}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=136..138}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=138..143}] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=143..150}] run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=158..163}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=170..175}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=180..}] run fill ~1 ~ ~1 ~-1 ~3 ~-1 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=190..191}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=206..}] run fill ~ ~4 ~ ~ ~4 ~ minecraft:spruce_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=206..}] run fill ~1 ~2 ~1 ~1 ~3 ~1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=206..}] run fill ~-1 ~2 ~-1 ~-1 ~3 ~-1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=206..}] run fill ~1 ~2 ~-1 ~1 ~3 ~-1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=206..}] run fill ~-1 ~2 ~1 ~-1 ~3 ~1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_rng=7}] run data merge entity @s {Motion:[0.0,0.5,0.0]}
tag @s[scores={g.sapling_height=207..}] add g.sapling_kill
