#crafting water_detector (Inventory)
give @s minecraft:observer{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Water Detector\",\"color\":\"yellow\",\"italic\":false}"}} 1
scoreboard players remove @s sp.craftdetector 1
