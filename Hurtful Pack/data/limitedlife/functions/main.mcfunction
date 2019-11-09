#feature-compatibility: graves, ventilators
#function graves:limitedlife (no need in hurtfulpack)
execute unless score 9 v.ventilator = 9 v.ventilator as @e[type=minecraft:item,tag=ll.spawnbat] at @s run function limitedlife:items/batwing_recover

#batwing eating
execute if entity @p[scores={ll.batwingeat=1..}] run function limitedlife:items/batwing_eat_tick

#curing item
execute as @e[tag=ll.healingredient] at @s positioned ~ ~1 ~ run function limitedlife:curing/curing
#calling curedvoid
execute as @a[tag=ll.curedvoid] at @s run function limitedlife:curing/curedvoid
#calling beam
execute as @e[tag=ll.beam] at @s run function limitedlife:curing/beam
#tired
execute as @e[tag=ll.tired] at @s run particle minecraft:dripping_water ~ ~1 ~ 0.3 0.3 0.3 1 1 normal

#crafting batwingsuit (Inventory)
execute as @a[scores={ll.craftbatwing=1..}] run give @s minecraft:elytra{CustomModelData:7060,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"],display:{Name:"{\"text\":\"Batwing Suit\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={ll.craftbatwing=1..}] run scoreboard players remove @s ll.craftbatwing 1
#calling batwingsuit
execute as @a[nbt={FallFlying:1b},tag=ll.batwingwear] at @s run function limitedlife:items/batwingsuit
execute as @a[tag=ll.batwingflap] at @s run function limitedlife:items/batwingsuit
scoreboard players reset @a ll.batwingflap

###winged arrow (performance impact too big)
##bow
#execute as @a[scores={ll.wa.shoot=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}]}] at @s run function limitedlife:items/winged_arrow_player
#execute as @a[scores={ll.wa.shoot=1..},nbt={SelectedItem:{id:"minecraft:bat_spawn_egg",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}] at @s run function limitedlife:items/winged_arrow_player
##crossbow
#tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}}] add ll.wa.shootc
#tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}]}] add ll.wa.shootc
#execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bat_spawn_egg"}],SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function limitedlife:items/winged_arrow_load
#execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run function limitedlife:items/winged_arrow_load
#execute as @a[tag=ll.wa.shootc] at @s run function limitedlife:items/winged_arrow_player
##arrow
#execute as @e[tag=ll.wa.arrow] at @s run function limitedlife:items/winged_arrow_arrow
#scoreboard players reset @a ll.wa.shoot
#scoreboard players reset @a ll.wa.shootc
