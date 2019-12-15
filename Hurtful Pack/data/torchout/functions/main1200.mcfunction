#re-schedule
execute if score $torchout$ hp.storeboard matches 1.. run schedule function torchout:main1200 1200t
#global counter
scoreboard players add $global$ to.torch 1
#torch tick if active
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.torch,tag=!sp.to.torch] at @s if block ~ ~ ~ #torchout:torch run function torchout:torch/active
#campfire tick if active
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.campfire] at @s if block ~ ~ ~ minecraft:campfire[lit=true] run function torchout:campfire/active
