execute as @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=to.tag.torch,tag=!sp.to.torch,limit=1,sort=nearest] at @s unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ #torchout:torch run tag @s add metroite.placement
tag @e[type=minecraft:area_effect_cloud,distance=..0.5,tag=to.tag.torch,tag=!sp.to.torch,tag=metroite.placement,limit=1,sort=nearest] add sp.to.torch
