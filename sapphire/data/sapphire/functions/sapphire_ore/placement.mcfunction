#calling sapphire_glassblock/success through block detector sp.C.glass
execute align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^ ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^ ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^-1 ^ ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^-1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^-1 ^1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute positioned ^1 ^-1 ^-1 align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["sp.C.ore","sp.so.placed"],Duration:1}
execute as @e[tag=sp.C.ore] at @s if block ~ ~ ~ minecraft:redstone_ore unless entity @e[type=armor_stand,tag=sp.sapphire_main,distance=..0.5] unless entity @e[tag=sp.so.setup,distance=..7] run function sapphire:sapphire_ore/success
#Recursive Ray
tp @s ^ ^ ^0.5
scoreboard players add @s sp.so.pa.ore 1
execute as @s[scores={sp.so.pa.ore=..14}] at @s run function sapphire:sapphire_ore/placement
