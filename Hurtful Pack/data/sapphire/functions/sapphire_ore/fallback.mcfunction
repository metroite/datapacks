execute store success score _fallback_ sp.so.pa.fail run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:redstone_ore",tag:{}}},nbt={Item:{id:"minecraft:redstone_ore",Count:1b}},distance=..2] {Item:{id:"minecraft:redstone_ore",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,display:{Name:"{\"text\":\"Sapphire Ore\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute if score _fallback_ sp.so.pa.fail > 0 sp.so.pa.fail run scoreboard players remove @s sp.so.pa.fail 1
scoreboard players set _fallback_ sp.so.pa.fail 0