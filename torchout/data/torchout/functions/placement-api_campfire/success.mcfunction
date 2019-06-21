execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=area_effect_cloud,tag=metroite.place,distance=..0.5] run scoreboard players reset @s to.campfire
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=area_effect_cloud,tag=metroite.place,distance=..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["metroite.place","to.tag.campfire"]}
execute align xyz positioned ~0.5 ~ ~0.5 as @e[type=area_effect_cloud,tag=to.tag.campfire,distance=..0.5,limit=1,sort=nearest] run function torchout:campfire/in
