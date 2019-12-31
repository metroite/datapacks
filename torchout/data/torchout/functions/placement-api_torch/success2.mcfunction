scoreboard players reset @s to.torch
function torchout:placement-api_torch/detection/out
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["metroite.place","to.tag.torch"]}
