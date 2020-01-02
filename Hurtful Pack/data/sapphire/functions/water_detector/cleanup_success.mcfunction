playsound minecraft:entity.player.levelup block @a ~ ~ ~ 2 2
particle minecraft:effect ~ ~ ~ 0.15 0.15 0.15 0.5 24
execute unless entity @s[tag=sp.wd.cleaned] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:observer",tag:{}}},nbt={Item:{id:"minecraft:observer",Count:1b}},distance=..2] {Item:{id:"minecraft:observer",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Water Detector\",\"color\":\"yellow\",\"italic\":false}"}}}}
kill @s
kill @e[type=minecraft:armor_stand,distance=..0.5,limit=4,tag=sp.wd.wd]
