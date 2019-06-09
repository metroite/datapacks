####placement-api_torch
#calling effects if item is selected
execute as @a[tag=to.torch] at @s run function torchout:placement-api_torch/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:torch"}}] add to.torch
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:torch"}}] run tag @s add to.torch
scoreboard players reset @a[tag=!to.torch] to.torch
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={to.pa.fail=1..}] at @s run function torchout:placement-api_torch/fallback

####placement-api_campfire
#calling effects if item is selected
execute as @a[tag=to.campfire] at @s run function torchout:placement-api_campfire/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:campfire"}}] add to.campfire
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:campfire"}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:campfire"}}] run tag @s add to.campfire
scoreboard players reset @a[tag=!to.campfire] to.campfire

#torch tick
execute as @e[tag=to.tag.torch,type=minecraft:area_effect_cloud,tag=!sp.to.torch] at @s run function torchout:torch/tick
scoreboard players add $global$ to.torch 1

#campfire tick
execute as @e[tag=to.tag.campfire,type=minecraft:area_effect_cloud] at @s run function torchout:campfire/tick
#replace command_block which replaced an unidentified campfire with an identified campfire
execute as @e[tag=to.cf.place] at @s run function torchout:campfire/fill_campfire
