tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add ll.wa.arrow
clear @s minecraft:bat_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute positioned ~ ~1.2 ~ run particle minecraft:large_smoke ^ ^ ^0.34 0.15 0.15 0.15 0.025 3
playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 0.5 0.76
