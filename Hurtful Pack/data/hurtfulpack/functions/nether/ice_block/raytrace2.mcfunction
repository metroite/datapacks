#raytrace wider
execute if entity @s[scores={hp.ice_block=8..14}] positioned ^ ^-0.5 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:ice run function hurtfulpack:nether/ice_block/success
execute if entity @s[scores={hp.ice_block=8..14}] positioned ^ ^1 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:ice run function hurtfulpack:nether/ice_block/success
execute if entity @s[scores={hp.ice_block=8..14}] positioned ^0.5 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:ice run function hurtfulpack:nether/ice_block/success
execute if entity @s[scores={hp.ice_block=8..14}] positioned ^-0.5 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:ice run function hurtfulpack:nether/ice_block/success
#repeat if unsuccessful
scoreboard players add @s[scores={hp.ice_block=8..14}] hp.ice_block 1
execute if entity @s[scores={hp.ice_block=8..14}] positioned ^ ^ ^1 run function hurtfulpack:nether/ice_block/raytrace2
scoreboard players reset @s[scores={hp.ice_block=15..}] hp.ice_block
