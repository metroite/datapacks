#water-cauldron if in nether
execute if entity @s[scores={hp.cauldron=1..}] run function hurtfulpack:nether/water-cauldron/fill
#ice if in nether
execute if entity @s[scores={hp.packed_ice=1..}] run function hurtfulpack:nether/ice_block/fill
execute if entity @s[scores={hp.blue_ice=1..}] run function hurtfulpack:nether/ice_block/fill
execute if entity @s[scores={hp.ice_block=1..}] run function hurtfulpack:nether/ice_block/fill
