#get the Fire nbt and light up if the entity is burning
execute store result score @s to.flaming run data get entity @s Fire
execute if entity @s[scores={to.flaming=1..}] as @e[type=minecraft:area_effect_cloud,distance=..1,tag=to.tag.torch] run function torchout:torch/in
execute if entity @s[type=minecraft:arrow,scores={to.flaming=1..}] run data merge entity @s {Fire:0s,Color:-1}
tag @s[type=minecraft:arrow,scores={to.flaming=1..}] add to.noflame
