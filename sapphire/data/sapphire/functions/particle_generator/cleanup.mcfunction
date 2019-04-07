playsound minecraft:entity.player.levelup block @a[distance=..16] ~ ~ ~ 2 2
particle minecraft:effect ~ ~ ~ 0.15 0.15 0.15 0.5 24
summon minecraft:item ~ ~0.25 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["sp.spawnsquid"],id:"minecraft:item",Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}}}}
kill @s
