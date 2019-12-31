#delay to bind item to arrow
scoreboard players add @s ue.ea.bind 2
execute if score @s ue.ea.bind > $bindtime$ ue.ea.bind run function usefulender:enderarrow/crossbow/offhand/load
#sound effects
execute if score @s ue.ea.bind matches ..2 run playsound minecraft:item.crossbow.loading_start ambient @a ~ ~ ~ 1 1.5
scoreboard players operation €halftime€ ue.ea.bind = $bindtime$ ue.ea.bind
scoreboard players operation €halftime€ ue.ea.bind /= 2 ue.ea.bind
execute if score @s ue.ea.bind = €halftime€ ue.ea.bind run playsound minecraft:item.crossbow.quick_charge_3 ambient @a ~ ~ ~ 1 1.5
