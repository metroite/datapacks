#init
scoreboard objectives remove ll.deaths
scoreboard objectives remove ll.cooking
scoreboard objectives remove ll.health
scoreboard objectives remove ll.sincedeath
scoreboard objectives remove ll.craftbatwing
scoreboard objectives remove ll.wa.shoot
scoreboard objectives remove ll.wa.shootc
scoreboard objectives remove ll.batwingflap
scoreboard objectives remove ll.end_gateway
scoreboard objectives remove ll.batwingeat

#tick
kill @e[tag=ll.spawnbat]
clear @a minecraft:white_stained_glass{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}
execute as @e[type=minecraft:item,tag=ll.healingredient] run function limitedlife:curing/unmetconditions
tag @a remove ll.cured
tag @a remove ll.bat
kill @e[tag=ll.bat,type=!minecraft:player]
tag @a remove ll.curedvoid
kill @e[type=!minecraft:player,tag=ll.curedvoid]
tag @e[type=minecraft:end_crystal,tag=ll.tired] remove ll.tired
clear @a minecraft:elytra{CustomModelData:7060,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}
tag @a remove ll.batwingflap
tag @a remove ll.batwingwear
kill @e[type=minecraft:arrow,tag=ll.wa.arrow]
