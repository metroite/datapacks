#raytrace
execute if entity @s[scores={hp.ice_block=1..7}] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:ice run function hurtfulpack:nether/ice_block/success
execute if entity @s[scores={hp.ice_block=1..7}] positioned ^ ^0.5 ^ align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:ice run function hurtfulpack:nether/ice_block/success
#repeat if unsuccessful
scoreboard players add @s[scores={hp.ice_block=1..7}] hp.ice_block 1
execute if entity @s[scores={hp.ice_block=1..7}] positioned ^ ^ ^1 run function hurtfulpack:nether/ice_block/raytrace
execute if entity @s[scores={hp.ice_block=8..}] positioned ^ ^ ^1 run function hurtfulpack:nether/ice_block/raytrace2
