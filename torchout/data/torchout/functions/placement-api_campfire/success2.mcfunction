scoreboard players reset @s to.campfire
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["metroite.place","to.tag.campfire"]}
execute as @e[type=area_effect_cloud,distance=..0.5,tag=to.tag.campfire,limit=1,sort=nearest] run function torchout:campfire/in
