#Recognizes the ItemRotation
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] at @s run function morsecode:rotation

#Determines if receiver or sender
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..}] at @s run function morsecode:determine

#Powers every redstone_wire with same ItemRotation (sender)
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.sender] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] run function morsecode:effect

#Replaces powered button with unpowered stone_button
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.sender] at @s run function morsecode:button

#Receiver blocks ongoing redstone power
execute as @e[type=minecraft:item_frame,scores={mc.itemrotation=0..},tag=mc.receiver] at @s if block ~ ~ ~ minecraft:redstone_wire[power=1] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_wire[power=0] replace minecraft:redstone_wire[power=1]

#crafting mobile_receiver
execute as @a[scores={mc.craftreceiver=1..}] run give @s minecraft:feather{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Lore:["Frequency: Slot 2 to Slot 9"],Name:"{\"text\":\"Mobile Receiver\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute as @a[scores={mc.craftreceiver=1..}] run scoreboard players remove @s mc.craftreceiver 1
