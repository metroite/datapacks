#calling sad_orchid/success
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^ ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^ ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^-1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^-1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^-1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute positioned ^1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["wt.C.sad_orchid"],Duration:1}
execute as @e[tag=wt.C.sad_orchid] at @s if block ~ ~ ~ minecraft:blue_orchid unless entity @e[type=area_effect_cloud,tag=wt.sad_orchid,distance=..0.5] unless entity @e[tag=wt.SU.sad_orchid,distance=..7] run function witchtrading:sad_orchid/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s wt.sad_orchid 1
execute as @s[scores={wt.sad_orchid=..14}] at @s run function witchtrading:sad_orchid/placement
