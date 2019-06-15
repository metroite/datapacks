#raytrace wider
execute if entity @s[scores={hp.cauldron=8..14}] positioned ^ ^-0.5 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:cauldron[level=0] run function hurtfulpack:no-nether-water-cauldron/success
execute if entity @s[scores={hp.cauldron=8..14}] positioned ^ ^1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:cauldron[level=0] run function hurtfulpack:no-nether-water-cauldron/success
execute if entity @s[scores={hp.cauldron=8..14}] positioned ^0.5 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:cauldron[level=0] run function hurtfulpack:no-nether-water-cauldron/success
execute if entity @s[scores={hp.cauldron=8..14}] positioned ^-0.5 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:cauldron[level=0] run function hurtfulpack:no-nether-water-cauldron/success
#repeat if unsuccessful
scoreboard players add @s[scores={hp.cauldron=8..14}] hp.cauldron 1
execute if entity @s[scores={hp.cauldron=8..14}] positioned ^ ^ ^1 run function hurtfulpack:no-nether-water-cauldron/raytrace2
scoreboard players reset @s[scores={hp.cauldron=15..}] hp.cauldron
