#calling sapphire_glassblock/success through block detector sp.C.glass
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^ ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^ ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^-1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^-1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^-1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute positioned ^1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["g.C.sapling"],Duration:1}
execute as @e[tag=g.C.sapling] at @s if block ~ ~ ~ #minecraft:saplings unless entity @e[tag=g.SU.sapling,distance=..7] run function graves:usebonemeal/success
execute as @e[tag=g.C.sapling] at @s if block ~ ~ ~ #graves:mushroom unless entity @e[tag=g.SU.sapling,distance=..7] run function graves:usebonemeal/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s g.usebonemeal 1
execute as @s[scores={g.usebonemeal=..14}] at @s run function graves:usebonemeal/placement
