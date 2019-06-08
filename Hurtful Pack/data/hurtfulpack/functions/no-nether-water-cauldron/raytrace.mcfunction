#raytrace
execute if entity @s[scores={hp.cauldron=1..7}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:cauldron[level=0] run function hurtfulpack:no-nether-water-cauldron/success
execute if entity @s[scores={hp.cauldron=1..7}] positioned ^ ^0.5 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:cauldron[level=0] run function hurtfulpack:no-nether-water-cauldron/success
#repeat if unsuccessful
scoreboard players add @s[scores={hp.cauldron=1..7}] hp.cauldron 1
execute if entity @s[scores={hp.cauldron=1..7}] positioned ^ ^ ^1 run function hurtfulpack:no-nether-water-cauldron/raytrace
execute if entity @s[scores={hp.cauldron=8..}] positioned ^ ^ ^1 run function hurtfulpack:no-nether-water-cauldron/raytrace
