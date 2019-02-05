#powering corresponding receiver
recipe give @p morsecode:mobile_receiver
execute as @s[scores={mc.itemrotation=0}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=0},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=1}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=1},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=2}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=2},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=3}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=3},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=4}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=4},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=5}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=5},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=6}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=6},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute as @s[scores={mc.itemrotation=7}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=7},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]

#grant advancement build_success
execute as @s[scores={mc.itemrotation=0}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=0},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=1}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=1},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=2}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=2},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=3}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=3},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=4}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=4},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=5}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=5},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=6}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=6},tag=mc.receiver] run advancement grant @p only morsecode:build_success
execute as @s[scores={mc.itemrotation=7}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=7},tag=mc.receiver] run advancement grant @p only morsecode:build_success

#call mobile_receiver
execute as @s[scores={mc.itemrotation=0}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 0
execute as @s[scores={mc.itemrotation=1}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:2b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 1
execute as @s[scores={mc.itemrotation=2}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:3b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 2
execute as @s[scores={mc.itemrotation=3}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:4b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 3
execute as @s[scores={mc.itemrotation=4}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:5b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 4
execute as @s[scores={mc.itemrotation=5}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:6b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 5
execute as @s[scores={mc.itemrotation=6}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:7b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 6
execute as @s[scores={mc.itemrotation=7}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:8b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 7
execute as @a[scores={mc.itemrotation=0..}] at @s run function morsecode:mobile_receiver
