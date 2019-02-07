fill ~ ~ ~ ~ ~ ~ minecraft:stripped_jungle_log[axis=y] replace #graves:space
execute at @s[scores={g.sapling_rng=7}] run data merge entity @s {Motion:[0.0,0.5,0.0]}
tag @s[scores={g.sapling_height=320..}] add g.sapling_kill
execute at @s[tag=g.jungle] run fill ^ ^-1 ^-1 ^ ^-1 ^-1 minecraft:stripped_jungle_log[axis=y] replace #graves:space
execute at @s[tag=g.jungle] run fill ^1 ^-1 ^ ^1 ^-1 ^-1 minecraft:vine[west=true] replace #graves:space
execute at @s[tag=g.jungle] run fill ^-1 ^-1 ^ ^-1 ^-1 ^-1 minecraft:vine[east=true] replace #graves:space
execute at @s[tag=g.jungle] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:vine[north=true] replace #graves:space
execute at @s[tag=g.jungle] run fill ~ ~-1 ~-2 ~ ~-1 ~-2 minecraft:vine[south=true] replace #graves:space
execute at @s[scores={g.sapling_height=290..305}] run fill ~5 ~ ~5 ~-5 ~-1 ~-5 minecraft:jungle_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=305..317}] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:jungle_leaves[persistent=false] replace #graves:space
execute at @s[scores={g.sapling_height=317..}] run fill ~2 ~ ~2 ~-2 ~1 ~-2 minecraft:jungle_leaves[persistent=false] replace #graves:space
#randomized branches: summon 6 entities 1 for each direction and 2 for no branch
execute at @s[scores={g.sapling_height=130}] run function graves:usebonemeal/sapling/growth/jungle_branch_init
execute at @s[scores={g.sapling_height=155}] run function graves:usebonemeal/sapling/growth/jungle_branch_init
execute at @s[scores={g.sapling_height=170}] run function graves:usebonemeal/sapling/growth/jungle_branch_init
execute at @s[scores={g.sapling_height=200}] run function graves:usebonemeal/sapling/growth/jungle_branch_init
execute at @s[scores={g.sapling_height=255}] run function graves:usebonemeal/sapling/growth/jungle_branch_init
