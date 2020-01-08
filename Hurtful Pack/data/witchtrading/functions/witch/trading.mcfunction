summon minecraft:area_effect_cloud ~ ~ ~ {Duration:600,CustomName:"{\"text\":\"wt.friendly\"}",Tags:["wt.ttv.fresh"]}
#making sure there can only be one at a time
execute as @e[type=minecraft:witch,distance=..6,tag=!wt.blocked] at @s run kill @e[type=area_effect_cloud,distance=..6,name=wt.friendly,tag=!wt.ttv.fresh]
tag @e[type=area_effect_cloud,distance=..0.1] remove wt.ttv.fresh
#reset
scoreboard players reset @s wt.ttv
