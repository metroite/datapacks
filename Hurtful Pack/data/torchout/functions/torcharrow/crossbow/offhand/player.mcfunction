#delay to bind torch to arrow
scoreboard players add @s to.ta.bind 2
execute if score @s to.ta.bind > $bindtime$ to.ta.bind run function torchout:torcharrow/crossbow/offhand/load
#sound effects
playsound minecraft:item.crossbow.quick_charge_3 ambient @a ~ ~ ~ 0.5 2
