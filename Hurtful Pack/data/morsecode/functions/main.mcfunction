#effects
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_torch"}}] at @s run function morsecode:determine

#crafting mobile_receiver
execute as @a[scores={mc.craftreceiver=1..}] run give @s minecraft:feather{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Lore:["{\"text\":\"Frequency: Slot 2 to Slot 9\"}"],Name:"{\"text\":\"Mobile Receiver\",\"color\":\"yellow\",\"italic\":false}"}} 1
scoreboard players remove @a[scores={mc.craftreceiver=1..}] mc.craftreceiver 1
