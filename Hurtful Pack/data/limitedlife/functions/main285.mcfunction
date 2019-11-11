#ll.deaths##
execute as @a unless score @s ll.deaths matches 0.. run function hurtfulpack:compatibility/limitedlife
scoreboard players remove @a[scores={ll.deaths=11..}] ll.deaths 1

#helmet##
execute as @a[nbt=!{Inventory:[{Slot:103b,Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:binding_curse"},{lvl:1s,id:"minecraft:vanishing_curse"}]}}]}] run function limitedlife:helmet/helmet
execute as @a[tag=ll.cured] run function limitedlife:helmet/helmet
#players need to be damaged to update to their real health value##
effect give @a[scores={ll.deaths=1..9,ll.health=20,ll.sincedeath=..1000}] minecraft:wither 1 1 true
#Compatibility for keepInventory=true##
tag @a[scores={ll.deaths=1..,ll.health=20,ll.sincedeath=..1000}] add ll.cured

#calling tired if global exceeds individual score##
scoreboard players add $global$ ll.cooking 1
execute as @e[type=minecraft:end_crystal,tag=ll.tired] if score @s ll.cooking < $global$ ll.cooking at @s run function limitedlife:curing/tired

#make sure ll.bat entities die and players should also lose the ll.bat tag##
execute as @e[type=minecraft:bat,tag=ll.bat] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=ll.beam] run kill @s
execute as @a[tag=ll.bat] at @s unless entity @e[type=minecraft:area_effect_cloud,distance=..8,tag=ll.beam] run tag @s remove ll.bat

#calling remove_batwingsuit##
execute as @a[nbt={Dimension:0,Inventory:[{id:"minecraft:elytra",tag:{CustomModelData:7060,Unbreakable:1b,HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}]}] at @s unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
execute as @e[type=minecraft:item,nbt={Dimension:0,Item:{id:"minecraft:elytra",tag:{HideFlags:16,CanPlaceOn:["minecraft:void_air"]}}}] at @s unless block ~ ~ ~ minecraft:cave_air run function limitedlife:items/remove_batwingsuit
