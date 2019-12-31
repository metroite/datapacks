####placement-api_torch
execute as @a[scores={to.torch=1..}] at @s positioned ~ ~1.5 ~ run function torchout:placement-api_torch/detection/1
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={to.pa.fail=1..}] at @s run function torchout:placement-api_torch/fallback
####placement-api_campfire
execute as @a[scores={to.campfire=1..}] at @s positioned ~ ~1.5 ~ run function torchout:placement-api_campfire/detection/1

#torch(item) cleanup (in order to replace button with torch, has been taken out of main20, as it would've just dropped the button:)
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.torch,tag=!sp.to.torch] at @s unless block ~ ~ ~ #torchout:torches positioned ~ ~0.5 ~ unless entity @e[type=minecraft:item,limit=1,sort=nearest,tag=!to.torchitem,nbt=!{Item:{id:"minecraft:torch",tag:{}}},nbt={Item:{id:"minecraft:torch",Count:1b}},distance=..0.5] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:oak_button",tag:{}}},nbt={Item:{id:"minecraft:oak_button",Count:1b}},distance=..0.5] {Tags:["to.torchitem"],Item:{id:"minecraft:torch",Count:1b}}

##torch arrow
#tick player and determine bow or crossbow
execute if score $torcharrows$ to.ta.shoot matches 1.. as @a at @s run function torchout:torcharrow/determine
#tick arrow
execute if score $torcharrows$ to.ta.shoot matches 1.. as @e[type=minecraft:arrow,tag=to.ta.arrow] at @s run function torchout:torcharrow/arrow
