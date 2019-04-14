playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 2 0.75
particle minecraft:large_smoke ~ ~ ~ 0.15 0.15 0.15 0.05 24
summon minecraft:item ~ ~0.25 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["ll.spawnbat"],id:"minecraft:item",Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}}}}
summon minecraft:bat ~ ~ ~ {Tags:["ll.spawnbat"],CustomName:"{\"text\":\"Tortured Bat\",\"color\":\"yellow\"}"}
kill @s
