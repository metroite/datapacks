#calling water_detector/success through block detector sp.C.glass
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^ ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^ ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^-1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^-1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^-1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute positioned ^1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.detector"],Duration:1}
execute as @e[tag=sp.C.detector] at @s if block ~ ~ ~ minecraft:observer unless entity @e[type=area_effect_cloud,tag=metroite.place,distance=..0.5] unless entity @e[tag=metroite.placement,distance=..7] run function sapphire:water_detector/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s sp.wd.pa.detec 1
execute as @s[scores={sp.wd.pa.detec=..14}] at @s run function sapphire:water_detector/placement
