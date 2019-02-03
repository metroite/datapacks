scoreboard players add @s g.sapling_rng 1
scoreboard players set @s[scores={g.sapling_rng=15}] g.sapling_rng 0

data merge entity @s[scores={g.sapling_rng=1},tag=g.acacia_north] {Motion:[0.0,0.3,-0.75]}
data merge entity @s[scores={g.sapling_rng=1},tag=g.acacia_east] {Motion:[0.75,0.4,0.0]}
data merge entity @s[scores={g.sapling_rng=1},tag=g.acacia_south] {Motion:[0.0,0.5,0.75]}
data merge entity @s[scores={g.sapling_rng=1},tag=g.acacia_west] {Motion:[-0.75,0.2,0.0]}

data merge entity @s[scores={g.sapling_rng=7},tag=g.acacia_north] {Motion:[0.0,0.4,0.0]}
data merge entity @s[scores={g.sapling_rng=7},tag=g.acacia_east] {Motion:[0.0,0.4,0.0]}
data merge entity @s[scores={g.sapling_rng=7},tag=g.acacia_south] {Motion:[0.0,0.4,0.0]}
data merge entity @s[scores={g.sapling_rng=7},tag=g.acacia_west] {Motion:[0.0,0.4,0.0]}

execute at @s[tag=g.acacia_north] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_acacia_wood replace minecraft:air
execute at @s[tag=g.acacia_east] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_acacia_wood replace minecraft:air
execute at @s[tag=g.acacia_south] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_acacia_wood replace minecraft:air
execute at @s[tag=g.acacia_west] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_acacia_wood replace minecraft:air