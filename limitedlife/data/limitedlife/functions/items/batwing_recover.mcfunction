#feature-compatibility
ventilators:ventilator/placement

execute unless entity @e[limit=1,sort=nearest,distance=..1.25,tag=metroite.place,tag=metroite.placement] run give @p[distance=..7] minecraft:bat_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["ll.spawnbat"],id:"minecraft:item",Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}} 1
kill @s
