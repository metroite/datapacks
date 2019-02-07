fill ~ ~ ~ ~ ~ ~ minecraft:stripped_oak_wood replace #graves:space
execute at @s[scores={g.sapling_height=178..195}] run fill ~2 ~ ~2 ~-2 ~-1 ~-2 minecraft:oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=195..215}] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=215..225}] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=226..}] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:oak_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=229..}] run fill ~1 ~1 ~1 ~1 ~1 ~1 minecraft:air replace minecraft:oak_leaves[persistent=false]
execute at @s[scores={g.sapling_height=229..}] run fill ~-1 ~1 ~-1 ~-1 ~1 ~-1 minecraft:air replace minecraft:oak_leaves[persistent=false]
execute at @s[scores={g.sapling_height=229..}] run fill ~1 ~1 ~-1 ~1 ~1 ~-1 minecraft:air replace minecraft:oak_leaves[persistent=false]
execute at @s[scores={g.sapling_height=229..}] run fill ~-1 ~1 ~1 ~-1 ~1 ~1 minecraft:air replace minecraft:oak_leaves[persistent=false]
tag @s[scores={g.sapling_height=230..}] add g.sapling_kill
