#calling sad_orchid/success through block detector sp.C.glass
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^ ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^ ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^-1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^-1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^-1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute positioned ^1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.glass"],Duration:1}
execute as @e[tag=sp.C.glass] at @s if block ~ ~ ~ minecraft:light_blue_stained_glass unless entity @e[type=area_effect_cloud,tag=sp.sapphire_glass,distance=..0.5] unless entity @e[tag=sp.sapphire_glasssetup,distance=..3] run function limitedlife:sapphire/sapphire_glassblock/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s sp.glass_placed 1
execute as @s[scores={sp.glass_placed=..14}] at @s run function limitedlife:sapphire/sapphire_glassblock/placement
