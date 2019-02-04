fill ~ ~ ~ ~ ~ ~ minecraft:stripped_spruce_log[axis=y] replace
execute at @s[scores={g.sapling_height=..70}] run fill ^ ^-1 ^-1 ^ ^-1 ^-1 minecraft:stripped_spruce_log[axis=y] replace minecraft:air
execute at @s[scores={g.sapling_height=55..60}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=60..65}] run fill ~5 ~ ~5 ~-5 ~ ~-5 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=65..67}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=80..85}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=85..90}] run fill ~5 ~ ~5 ~-5 ~ ~-5 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=90..92}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=115..118}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=118..122}] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=122..125}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=150..152}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=152..155}] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=155..158}] run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=170..175}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=180..}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=190..191}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=199..}] run fill ~1 ~1 ~1 ~1 ~1 ~1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199..}] run fill ~-1 ~1 ~-1 ~-1 ~1 ~-1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199..}] run fill ~1 ~1 ~-1 ~1 ~1 ~-1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199..}] run fill ~-1 ~1 ~1 ~-1 ~1 ~1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_rng=7}] run data merge entity @s {Motion:[0.0,0.5,0.0]}
tag @s[scores={g.sapling_height=200..}] add g.sapling_kill
