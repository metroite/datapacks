execute as @e[tag=to.tag.torch,tag=!sp.to.torch,distance=..0.5,limit=1,sort=nearest] at @s unless entity @e[tag=metroite.placement,distance=..3] if block ~ ~ ~ #torchout:torch run tag @s add metroite.placement
tag @e[tag=to.tag.torch,tag=!sp.to.torch,tag=metroite.placement,distance=..0.5,limit=1,sort=nearest] add sp.to.torch
