#delay to bind item to arrow
scoreboard players add @s ll.wa.bind 2
execute if score @s ll.wa.bind > $bindtime$ ll.wa.bind run function limitedlife:wingedarrow/crossbow/mainhand/load
#sound effects
scoreboard players operation €halftime€ ll.wa.bind = $bindtime$ ll.wa.bind
scoreboard players operation €halftime€ ll.wa.bind /= 2 ll.wa.bind
execute if score @s ll.wa.bind = €halftime€ ll.wa.bind run playsound minecraft:item.crossbow.quick_charge_3 ambient @a ~ ~ ~ 1 1.5
