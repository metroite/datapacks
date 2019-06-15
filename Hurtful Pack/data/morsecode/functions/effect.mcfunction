#powering corresponding receiver
recipe give @p morsecode:mobile_receiver
execute if entity @s[scores={mc.itemrotation=0}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=0},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=1}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=1},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=2}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=2},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=3}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=3},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=4}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=4},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=5}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=5},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=6}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=6},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]
execute if entity @s[scores={mc.itemrotation=7}] as @e[type=minecraft:item_frame,scores={mc.itemrotation=7},tag=mc.receiver] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=1] replace minecraft:redstone_wire[power=0]

#grant advancement build_success
execute if entity @s[scores={mc.itemrotation=0}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=0},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=1}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=1},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=2}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=2},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=3}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=3},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=4}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=4},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=5}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=5},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=6}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=6},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success
execute if entity @s[scores={mc.itemrotation=7}] if entity @e[type=minecraft:item_frame,scores={mc.itemrotation=7},tag=mc.receiver] run advancement grant @p[distance=..8] only morsecode:build_success

#call mobile_receiver and determine its frequency
execute if entity @s[scores={mc.itemrotation=0}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 0
execute if entity @s[scores={mc.itemrotation=1}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:2b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 1
execute if entity @s[scores={mc.itemrotation=2}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:3b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 2
execute if entity @s[scores={mc.itemrotation=3}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:4b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 3
execute if entity @s[scores={mc.itemrotation=4}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:5b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 4
execute if entity @s[scores={mc.itemrotation=5}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:6b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 5
execute if entity @s[scores={mc.itemrotation=6}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:7b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 6
execute if entity @s[scores={mc.itemrotation=7}] run scoreboard players set @a[nbt={Inventory:[{id:"minecraft:feather",Slot:8b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] mc.itemrotation 7
execute as @a[scores={mc.itemrotation=0..}] at @s run function morsecode:mobile_receiver

#Replaces powered button with unpowered stone_button
execute if block ~ ~ ~ minecraft:stone_button[facing=north] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=north] replace minecraft:stone_button[powered=true,face=floor]
execute if block ~ ~ ~ minecraft:stone_button[facing=south] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=south] replace minecraft:stone_button[powered=true,face=floor]
execute if block ~ ~ ~ minecraft:stone_button[facing=west] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=west] replace minecraft:stone_button[powered=true,face=floor]
execute if block ~ ~ ~ minecraft:stone_button[facing=east] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_button[powered=false,face=floor,facing=east] replace minecraft:stone_button[powered=true,face=floor]
