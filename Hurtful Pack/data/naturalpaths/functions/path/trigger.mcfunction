#if moving
function naturalpaths:path/moving/lookup
#if running
schedule function naturalpaths:path/running/lookup 4s
#feature-compatibility: heavyarmor: if heavy and moving
execute if score $heavyarmor$ hp.storeboard matches 1.. if entity @p[scores={ha.armorcount=40..}] run schedule function naturalpaths:path/heavyarmor/lookup 8s
