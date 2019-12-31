#delay to bind torch to arrow
scoreboard players add @s to.ta.bind 2
execute if score @s to.ta.bind > $bindtime$ to.ta.bind run function torchout:torcharrow/crossbow/mainhand/load
#sound effects
scoreboard players operation €halftime€ to.ta.bind = $bindtime$ to.ta.bind
scoreboard players operation €halftime€ to.ta.bind /= 2 to.ta.bind
execute if score @s to.ta.bind = €halftime€ to.ta.bind run playsound minecraft:item.crossbow.quick_charge_3 ambient @a ~ ~ ~ 1 1.5
