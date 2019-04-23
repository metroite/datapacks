#drops "Sapphire"/"Sapphire Ore"
execute as @s[tag=sp.sapphire_main] unless entity @e[type=minecraft:item,nbt=!{Item:{id:"minecraft:redstone",tag:{}}},nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..2] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:redstone_ore",tag:{}}},nbt={Item:{id:"minecraft:redstone_ore",Count:1b}},distance=..2] {Item:{id:"minecraft:redstone_ore",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,display:{Name:"{\"text\":\"Sapphire Ore\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @s[tag=sp.sapphire_main] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:redstone",tag:{}}},nbt={Item:{id:"minecraft:redstone",Count:1b}},distance=..2] {Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["sp.spawnsquid"],id:"minecraft:item",Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}}}}
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.4 0.4 0.4 2 12
execute as @s[tag=sp.sapphire_main] run recipe give @p[distance=..8] sapphire:water_detector
execute as @s[tag=sp.sapphire_main] run recipe give @p[distance=..8] sapphire:lightning_rod

data merge entity @s[tag=sp.sapphire_main,tag=!sp.so.placed] {Duration:2147483637,Tags:["sp.noore"]}
kill @s[tag=!sp.noore]
