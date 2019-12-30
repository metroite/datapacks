#re-schedule
execute if score $torchout$ hp.storeboard matches 1.. run schedule function torchout:main9 9t
#torch tick
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.torch,tag=!sp.to.torch] at @s run function torchout:torch/tick
#campfire tick
execute as @e[type=minecraft:area_effect_cloud,tag=to.tag.campfire] at @s run function torchout:campfire/tick
