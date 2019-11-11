tag @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}]}] remove ll.wa.shootc

advancement grant @s[scores={ll.wa.shoot=1..}] only limitedlife:winged_arrow
execute if entity @s[scores={ll.wa.shoot=1..}] run tag @e[type=minecraft:arrow,distance=..16,limit=1,sort=nearest,nbt={inGround:0b}] add ll.wa.arrow
execute if entity @s[scores={ll.wa.shoot=1..}] positioned ~ ~1.2 ~ run particle minecraft:large_smoke ^ ^ ^0.34 0.15 0.15 0.15 0.025 3
execute if entity @s[scores={ll.wa.shoot=1..}] run playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 0.5 0.76
execute if entity @s[scores={ll.wa.shoot=1..}] run clear @s minecraft:bat_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute if entity @s[scores={ll.wa.shootc=1..}] run tag @e[type=minecraft:arrow,distance=..16,limit=1,sort=nearest,nbt={inGround:0b}] add ll.wa.arrow
execute if entity @s[scores={ll.wa.shootc=1..}] positioned ~ ~1.2 ~ run particle minecraft:large_smoke ^ ^ ^0.34 0.15 0.15 0.15 0.025 3
execute if entity @s[scores={ll.wa.shootc=1..}] run playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 0.5 0.76
#reset texture (CustomModelData)
execute if entity @s[scores={ll.wa.shootc=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[]}}}] run data modify entity @s SelectedItem.tag.CustomModelData set value 0
