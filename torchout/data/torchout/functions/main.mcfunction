####placement-API
#calling effects if item is selected
execute as @a[tag=to.torch] at @s run function torchout:placement-api/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:torch"}}] add to.torch
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch"}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:torch"}}] run tag @s add to.torch
scoreboard players reset @a[tag=!to.torch] to.torch
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={to.pa.fail=1..}] at @s run function torchout:placement-api/fallback

#torch tick
execute as @e[tag=to.tag.torch] at @s run function torchout:torch/tick
