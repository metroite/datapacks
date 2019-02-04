#execute at @s[scores={g.sapling_height=200}] run fill ~ ~ ~ ~5 ~ ~-1 minecraft:stripped_jungle_log replace minecraft:air
#execute at @s[scores={g.sapling_height=130}] run fill ~ ~ ~2 ~6 ~1 ~-3 minecraft:jungle_leaves replace minecraft:air
#execute at @s[scores={g.sapling_height=255}] run fill ~ ~ ~1 ~7 ~1 ~-2 minecraft:jungle_leaves replace minecraft:air
#execute at @s[scores={g.sapling_height=200}] run fill ~ ~ ~1 ~4 ~2 ~-2 minecraft:jungle_leaves replace minecraft:air
#execute at @s[scores={g.sapling_height=200}] run fill ~ ~-1 ~ ~5 ~2 ~-1 minecraft:jungle_leaves replace minecraft:air

#actual branches
execute at @s[tag=g.jungle_north] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:stripped_jungle_log[axis=z] replace minecraft:air
execute at @s[tag=g.jungle_north] run fill ~ ~ ~-1 ~ ~ ~-3 minecraft:stripped_jungle_log[axis=z] replace minecraft:air
execute at @s[tag=g.jungle_north] run fill ~ ~1 ~-4 ~ ~1 ~-5 minecraft:stripped_jungle_log[axis=z] replace minecraft:air
execute at @s[tag=g.jungle_north] run fill ~4 ~ ~-1 ~-4 ~ ~-9 minecraft:jungle_leaves replace minecraft:air
execute at @s[tag=g.jungle_north] run fill ~4 ~ ~-1 ~4 ~ ~-1 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_north] run fill ~-4 ~ ~-1 ~-4 ~ ~-1 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_north] run fill ~4 ~ ~-8 ~3 ~ ~-9 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_north] run fill ~-4 ~ ~-8 ~-3 ~ ~-9 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_north] positioned ~ ~1 ~-4 run function graves:usebonemeal/sapling/growth/jungle_branch_leaf

execute at @s[tag=g.jungle_east] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:stripped_jungle_log[axis=x] replace minecraft:air
execute at @s[tag=g.jungle_east] run fill ~1 ~ ~ ~3 ~ ~ minecraft:stripped_jungle_log[axis=x] replace minecraft:air
execute at @s[tag=g.jungle_east] run fill ~4 ~1 ~ ~5 ~1 ~ minecraft:stripped_jungle_log[axis=x] replace minecraft:air
execute at @s[tag=g.jungle_east] run fill ~1 ~ ~4 ~9 ~ ~-4 minecraft:jungle_leaves replace minecraft:air
execute at @s[tag=g.jungle_east] run fill ~ ~ ~4 ~ ~ ~4 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_east] run fill ~ ~ ~-4 ~ ~ ~-4 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_east] run fill ~8 ~ ~4 ~9 ~ ~3 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_east] run fill ~8 ~ ~-4 ~9 ~ ~-3 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_east] positioned ~4 ~1 ~ run function graves:usebonemeal/sapling/growth/jungle_branch_leaf

execute at @s[tag=g.jungle_south] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:stripped_jungle_log[axis=z] replace minecraft:air
execute at @s[tag=g.jungle_south] run fill ~ ~ ~1 ~ ~ ~3 minecraft:stripped_jungle_log[axis=z] replace minecraft:air
execute at @s[tag=g.jungle_south] run fill ~ ~1 ~4 ~ ~1 ~5 minecraft:stripped_jungle_log[axis=z] replace minecraft:air
execute at @s[tag=g.jungle_south] run fill ~4 ~ ~1 ~-4 ~ ~9 minecraft:jungle_leaves replace minecraft:air
execute at @s[tag=g.jungle_south] run fill ~4 ~ ~ ~4 ~ ~ minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_south] run fill ~-4 ~ ~ ~-4 ~ ~ minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_south] run fill ~4 ~ ~8 ~3 ~ ~9 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_south] run fill ~-4 ~ ~8 ~-3 ~ ~9 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_south] positioned ~ ~1 ~4 run function graves:usebonemeal/sapling/growth/jungle_branch_leaf

execute at @s[tag=g.jungle_west] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:stripped_jungle_log[axis=x] replace minecraft:air
execute at @s[tag=g.jungle_west] run fill ~-1 ~ ~ ~-3 ~ ~ minecraft:stripped_jungle_log[axis=x] replace minecraft:air
execute at @s[tag=g.jungle_west] run fill ~-4 ~1 ~ ~-5 ~1 ~ minecraft:stripped_jungle_log[axis=x] replace minecraft:air
execute at @s[tag=g.jungle_west] run fill ~-1 ~ ~4 ~-9 ~ ~-4 minecraft:jungle_leaves replace minecraft:air
execute at @s[tag=g.jungle_west] run fill ~ ~ ~4 ~ ~ ~4 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_west] run fill ~ ~ ~-4 ~ ~ ~-4 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_west] run fill ~-8 ~ ~4 ~-9 ~ ~3 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_west] run fill ~-8 ~ ~-4 ~-9 ~ ~-3 minecraft:air replace minecraft:jungle_leaves[persistent=false]
execute at @s[tag=g.jungle_west] positioned ~-4 ~1 ~ run function graves:usebonemeal/sapling/growth/jungle_branch_leaf
