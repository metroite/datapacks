####placement-api_torch
#calling effects if item is selected
execute as @a[scores={to.torch=1..}] at @s positioned ~ ~1.5 ~ run function torchout:placement-api_torch/detection/1
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={to.pa.fail=1..}] at @s run function torchout:placement-api_torch/fallback

####placement-api_campfire
#calling effects if item is selected
execute as @a[scores={to.campfire=1..}] at @s positioned ~ ~1.5 ~ run function torchout:placement-api_campfire/detection/1

#torch tick
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.torch,tag=!sp.to.torch] at @s run function torchout:torch/tick
scoreboard players add $global$ to.torch 1

#campfire tick
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.campfire] at @s run function torchout:campfire/tick
#replace command_block which replaced an unidentified campfire with an identified campfire
execute as @e[type=minecraft:area_effect_cloud,tag=to.cf.place] at @s run function torchout:campfire/fill_campfire

##torcharrow
#tick player and determine bow or crossbow
execute if score $torcharrows$ to.ta.shoot matches 1.. as @a at @s run function torchout:torcharrow/determine
#tick arrow
execute if score $torcharrows$ to.ta.shoot matches 1.. as @e[tag=to.ta.arrow] at @s run function torchout:torcharrow/arrow
