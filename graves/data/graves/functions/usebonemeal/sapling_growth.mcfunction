#disable hoppers
data merge block ~ ~-1 ~ {TransferCooldown:32.767}
data merge block ~ ~-2 ~ {TransferCooldown:32.767}
data merge block ~ ~ ~ {TransferCooldown:32.767}

##logs
execute at @s[tag=g.oak] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_oak_wood replace
execute at @s[tag=g.spruce] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_spruce_wood replace
execute at @s[tag=g.birch] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_birch_wood replace
execute at @s[tag=g.jungle] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_jungle_wood replace
execute at @s[tag=g.acacia] run fill ~ ~ ~ ~ ~ ~ minecraft:stripped_acacia_wood replace
execute at @s[tag=g.dark_oak] run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:stripped_dark_oak_wood replace
##leaves
#oak
execute at @s[scores={g.sapling_height=148..165},tag=g.oak] run fill ~2 ~ ~2 ~-2 ~-1 ~-2 minecraft:oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=165..185},tag=g.oak] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=185..190},tag=g.oak] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=191..},tag=g.oak] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=199},tag=g.oak] run fill ~1 ~1 ~1 ~1 ~1 ~1 minecraft:air replace minecraft:oak_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199},tag=g.oak] run fill ~-1 ~1 ~-1 ~-1 ~1 ~-1 minecraft:air replace minecraft:oak_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199},tag=g.oak] run fill ~1 ~1 ~-1 ~1 ~1 ~-1 minecraft:air replace minecraft:oak_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199},tag=g.oak] run fill ~-1 ~1 ~1 ~-1 ~1 ~1 minecraft:air replace minecraft:oak_leaves[persistent=false]
tag @s[scores={g.sapling_height=200..},tag=g.oak] add g.sapling_kill
#spruce
execute at @s[scores={g.sapling_height=..80},tag=g.spruce] run fill ^ ^-1 ^-1 ^ ^-1 ^-1 minecraft:stripped_spruce_wood replace minecraft:air
execute at @s[scores={g.sapling_height=85..90},tag=g.spruce] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=90..95},tag=g.spruce] run fill ~5 ~ ~5 ~-5 ~ ~-5 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=95..97},tag=g.spruce] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=120..123},tag=g.spruce] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=123..127},tag=g.spruce] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=127..130},tag=g.spruce] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=155..157},tag=g.spruce] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=157..160},tag=g.spruce] run fill ~3 ~ ~3 ~-3 ~ ~-3 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=160..163},tag=g.spruce] run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=175..180},tag=g.spruce] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=180..},tag=g.spruce] run fill ~1 ~ ~1 ~-1 ~1 ~-1 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=190..191},tag=g.spruce] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:spruce_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=199},tag=g.spruce] run fill ~1 ~1 ~1 ~1 ~1 ~1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199},tag=g.spruce] run fill ~-1 ~1 ~-1 ~-1 ~1 ~-1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199},tag=g.spruce] run fill ~1 ~1 ~-1 ~1 ~1 ~-1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_height=199},tag=g.spruce] run fill ~-1 ~1 ~1 ~-1 ~1 ~1 minecraft:air replace minecraft:spruce_leaves[persistent=false]
execute at @s[scores={g.sapling_rng=7},tag=g.spruce] run data merge entity @s {Motion:[0.0,0.5,0.0]}
tag @s[scores={g.sapling_height=200..},tag=g.spruce] add g.sapling_kill
#birch
execute at @s[scores={g.sapling_rng=6},tag=g.birch] run data merge entity @s {Motion:[0.0,0.5,0.0]}
execute at @s[scores={g.sapling_rng=12},tag=g.birch] run data merge entity @s {Motion:[0.0,0.5,0.0]}
execute at @s[scores={g.sapling_height=115..130},tag=g.birch] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:birch_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=130..},tag=g.birch] run fill ~2 ~ ~2 ~-2 ~1 ~-2 minecraft:birch_leaves[persistent=false] replace minecraft:air
tag @s[scores={g.sapling_height=140..},tag=g.birch] add g.sapling_kill
#jungle
execute at @s[scores={g.sapling_rng=7},tag=g.jungle] run data merge entity @s {Motion:[0.0,0.5,0.0]}
tag @s[scores={g.sapling_height=320..},tag=g.jungle] add g.sapling_kill
execute at @s[tag=g.jungle] run fill ^ ^-1 ^-1 ^ ^-1 ^-1 minecraft:stripped_jungle_wood replace minecraft:air
execute at @s[tag=g.jungle] run fill ^1 ^-1 ^ ^1 ^-1 ^-1 minecraft:vine[west=true] replace minecraft:air
execute at @s[tag=g.jungle] run fill ^-1 ^-1 ^ ^-1 ^-1 ^-1 minecraft:vine[east=true] replace minecraft:air
execute at @s[tag=g.jungle] run fill ~ ~-1 ~1 ~ ~-1 ~1 minecraft:vine[north=true] replace minecraft:air
execute at @s[tag=g.jungle] run fill ~ ~-1 ~-2 ~ ~-1 ~-2 minecraft:vine[south=true] replace minecraft:air
execute at @s[scores={g.sapling_height=290..305},tag=g.jungle] run fill ~5 ~ ~5 ~-5 ~-1 ~-5 minecraft:jungle_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=305..317},tag=g.jungle] run fill ~4 ~ ~4 ~-4 ~ ~-4 minecraft:jungle_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=317..},tag=g.jungle] run fill ~2 ~ ~2 ~-2 ~1 ~-2 minecraft:jungle_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=200},tag=g.jungle] run fill ^ ^ ^ ^5 ^ ^-1 minecraft:stripped_jungle_wood replace minecraft:air
execute at @s[scores={g.sapling_height=200},tag=g.jungle] run fill ^ ^ ^2 ^6 ^1 ^-3 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=200},tag=g.jungle] run fill ^ ^ ^1 ^7 ^1 ^-2 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=200},tag=g.jungle] run fill ^ ^ ^1 ^4 ^2 ^-2 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=200},tag=g.jungle] run fill ^ ^-1 ^ ^5 ^2 ^-1 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=130},tag=g.jungle] run fill ^ ^ ^ ^-3 ^ ^-1 minecraft:stripped_jungle_wood replace minecraft:air
execute at @s[scores={g.sapling_height=130},tag=g.jungle] run fill ^ ^ ^2 ^-4 ^1 ^-3 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=130},tag=g.jungle] run fill ^ ^ ^1 ^-5 ^1 ^-2 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=130},tag=g.jungle] run fill ^ ^ ^1 ^-3 ^2 ^-2 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=130},tag=g.jungle] run fill ^ ^-1 ^ ^-4 ^2 ^-1 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=255},tag=g.jungle] run fill ^ ^ ^ ^-4 ^1 ^-1 minecraft:stripped_jungle_wood replace minecraft:air
execute at @s[scores={g.sapling_height=255},tag=g.jungle] run fill ^ ^ ^2 ^-5 ^1 ^-3 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=255},tag=g.jungle] run fill ^ ^ ^1 ^-6 ^ ^-2 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=255},tag=g.jungle] run fill ^ ^ ^1 ^-4 ^2 ^-2 minecraft:jungle_leaves replace minecraft:air
execute at @s[scores={g.sapling_height=255},tag=g.jungle] run fill ^ ^-1 ^ ^-5 ^2 ^-1 minecraft:jungle_leaves replace minecraft:air
#acacia
execute at @s[scores={g.sapling_height=..80},tag=g.acacia] run fill ^ ^-1 ^-1 ^ ^-1 ^-1 minecraft:stripped_acacia_wood replace minecraft:air
execute at @s[scores={g.sapling_rng=4},tag=g.acacia] run data merge entity @s {Motion:[0.0,0.4,0.0]}
execute at @s[scores={g.sapling_rng=8},tag=g.acacia] run data merge entity @s {Motion:[0.0,0.4,0.0]}
execute at @s[scores={g.sapling_height=195..},tag=g.acacia] run fill ~5 ~ ~5 ~-5 ~1 ~-5 minecraft:acacia_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=100},tag=g.acacia] run summon minecraft:item ~ ~ ~ {Motion:[0.0,0.25,0.0],Tags:["g.acacia_branch","g.acacia_north"],Item:{id:"minecraft:bone_meal",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dusty acacia_north\",\"color\":\"yellow\",\"italic\":false}"}}},PickupDelay:-1}
execute at @s[scores={g.sapling_height=90},tag=g.acacia] run summon minecraft:item ~ ~ ~ {Motion:[0.0,0.25,0.0],Tags:["g.acacia_branch","g.acacia_east"],Item:{id:"minecraft:bone_meal",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dusty acacia_east\",\"color\":\"yellow\",\"italic\":false}"}}},PickupDelay:-1}
execute at @s[scores={g.sapling_height=70},tag=g.acacia] run summon minecraft:item ~ ~ ~ {Motion:[0.0,0.25,0.0],Tags:["g.acacia_branch","g.acacia_south"],Item:{id:"minecraft:bone_meal",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dusty acacia_south\",\"color\":\"yellow\",\"italic\":false}"}}},PickupDelay:-1}
execute at @s[scores={g.sapling_height=110},tag=g.acacia] run summon minecraft:item ~ ~ ~ {Motion:[0.0,0.25,0.0],Tags:["g.acacia_branch","g.acacia_west"],Item:{id:"minecraft:bone_meal",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dusty acacia_west\",\"color\":\"yellow\",\"italic\":false}"}}},PickupDelay:-1}
execute as @e[tag=g.acacia_branch,limit=4,sort=nearest] at @s run function graves:usebonemeal/acacia_branch
execute as @s[scores={g.sapling_height=195..},tag=g.acacia] as @e[tag=g.acacia_branch,limit=4,sort=nearest] at @s run fill ~4 ~ ~4 ~-4 ~1 ~-4 minecraft:acacia_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=196..},tag=g.acacia] run kill @e[tag=g.acacia_branch,limit=4,sort=nearest]
tag @s[scores={g.sapling_height=200..},tag=g.acacia] add g.sapling_kill
#dark_oak
execute at @s[scores={g.sapling_height=..30},tag=g.dark_oak] run fill ~3 ~ ~ ~-3 ~ ~ minecraft:stripped_dark_oak_wood replace minecraft:air
execute at @s[scores={g.sapling_height=30..40},tag=g.dark_oak] run fill ~2 ~ ~ ~-2 ~ ~ minecraft:stripped_dark_oak_wood replace minecraft:air
execute at @s[scores={g.sapling_height=..40},tag=g.dark_oak] run fill ~ ~ ~3 ~ ~ ~-3 minecraft:stripped_dark_oak_wood replace minecraft:air
execute at @s[scores={g.sapling_height=30..40},tag=g.dark_oak] run fill ~ ~ ~2 ~ ~ ~-2 minecraft:stripped_dark_oak_wood replace minecraft:air
execute at @s[scores={g.sapling_height=50..60},tag=g.dark_oak] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:dark_oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=70..80},tag=g.dark_oak] run fill ~2 ~ ~2 ~-2 ~ ~-2 minecraft:dark_oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=115..},tag=g.dark_oak] run fill ~4 ~ ~4 ~-4 ~2 ~-4 minecraft:dark_oak_leaves[persistent=false] replace minecraft:air
execute at @s[scores={g.sapling_height=90..115},tag=g.dark_oak] run fill ~6 ~ ~6 ~-6 ~ ~-6 minecraft:dark_oak_leaves[persistent=false] replace minecraft:air
tag @s[scores={g.sapling_height=120..},tag=g.dark_oak] add g.sapling_kill

#growth functions
data merge entity @s[scores={g.sapling_rng=1}] {Motion:[0.0,0.5,0.0]}
scoreboard players set @s[scores={g.sapling_rng=15}] g.sapling_rng 0
scoreboard players add @s g.sapling_rng 1
scoreboard players add @s g.sapling_height 1
kill @s[tag=g.sapling_kill]
