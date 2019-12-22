#delay to bind torch to arrow
scoreboard players add @s ll.wa.bind 2
execute if score @s ll.wa.bind > $bindtime$ ll.wa.bind run function limitedlife:wingedarrow/crossbow/offhand/load
#sound effects
execute if score @s ll.wa.bind matches ..2 run playsound minecraft:item.crossbow.loading_start ambient @a ~ ~ ~ 1 1.5
scoreboard players operation €halftime€ ll.wa.bind = $bindtime$ ll.wa.bind
scoreboard players operation €halftime€ ll.wa.bind /= 2 ll.wa.bind
execute if score @s ll.wa.bind = €halftime€ ll.wa.bind run playsound minecraft:item.crossbow.quick_charge_3 ambient @a ~ ~ ~ 1 1.5
