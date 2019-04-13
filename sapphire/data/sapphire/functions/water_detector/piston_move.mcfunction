fill ~ ~ ~ ~ ~ ~ minecraft:air replace
tag @s add sp.wd.cleaned
#item
summon minecraft:item ~ ~0.25 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:observer",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Water Detector\",\"color\":\"yellow\",\"italic\":false}"}}}}
