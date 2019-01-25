#calling lightning_rod/success through block detector sp.C.glass
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^ ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^ ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^-1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^-1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^-1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute positioned ^1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.torch"],Duration:1}
execute as @e[tag=sp.C.torch] at @s if block ~ ~ ~ minecraft:redstone_torch unless entity @e[type=area_effect_cloud,tag=sp.lr.attractor,distance=..0.5] unless entity @e[tag=sp.lr.setup,distance=..7] run function sapphire:lightning_rod/success
execute as @e[tag=sp.C.torch] at @s if block ~ ~ ~ minecraft:redstone_wall_torch unless entity @e[type=area_effect_cloud,tag=sp.lr.attractor,distance=..0.5] unless entity @e[tag=sp.lr.setup,distance=..7] run function sapphire:lightning_rod/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s sp.lr.pa.torch 1
execute as @s[scores={sp.lr.pa.torch=..14}] at @s run function sapphire:lightning_rod/placement
