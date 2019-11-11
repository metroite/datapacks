#re-schedule
execute if score $wingedarrows$ ll.wa.shoot matches 1.. if score $limitedlife$ hp.storeboard matches 1.. run schedule function limitedlife:items/winged_arrow_tick 4t
##winged arrow (performance impact too big)
#bow
execute as @a[scores={ll.wa.shoot=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}]}] at @s run function limitedlife:items/winged_arrow_player
execute as @a[scores={ll.wa.shoot=1..},nbt={SelectedItem:{id:"minecraft:bat_spawn_egg",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}] at @s run function limitedlife:items/winged_arrow_player
#crossbow
tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}}] add ll.wa.shootc
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}]}] add ll.wa.shootc
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg"}],SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function limitedlife:items/winged_arrow_load
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run function limitedlife:items/winged_arrow_load
execute as @a[tag=ll.wa.shootc] at @s run function limitedlife:items/winged_arrow_player
#arrow
execute as @e[type=minecraft:arrow,tag=ll.wa.arrow] at @s run function limitedlife:items/winged_arrow_arrow
scoreboard players reset @a ll.wa.shoot
scoreboard players reset @a ll.wa.shootc
