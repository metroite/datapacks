#disable hoppers
data merge block ~ ~-1 ~ {TransferCooldown:32.767}
data merge block ~ ~-2 ~ {TransferCooldown:32.767}
data merge block ~ ~ ~ {TransferCooldown:32.767}

#feature-compatibility to growontoptree
function growontoptree:graves

##growth
#oak
execute at @s[tag=g.oak] run function graves:usebonemeal/sapling/growth/oak
#spruce
execute at @s[tag=g.spruce] run function graves:usebonemeal/sapling/growth/spruce
#birch
execute at @s[tag=g.birch] run function graves:usebonemeal/sapling/growth/birch
#jungle
execute at @s[tag=g.jungle] run function graves:usebonemeal/sapling/growth/jungle
#acacia
execute at @s[tag=g.acacia] run function graves:usebonemeal/sapling/growth/acacia
#dark_oak
execute at @s[tag=g.dark_oak] run function graves:usebonemeal/sapling/growth/dark_oak
#mangrove
execute at @s[tag=g.mangrove] run function graves:usebonemeal/sapling/growth/mangrove
#growth functions
data merge entity @s[scores={g.sapling_rng=1}] {Motion:[0.0,0.5,0.0]}
scoreboard players set @s[scores={g.sapling_rng=15}] g.sapling_rng 0
scoreboard players add @s g.sapling_rng 1
scoreboard players add @s g.sapling_height 1
kill @s[tag=g.sapling_kill]
execute unless block ~ ~3 ~ #graves:space run kill @s
