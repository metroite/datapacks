###NO UNLIMITED-LIGHT ALLOWED!
execute as @e[tag=to.tag.campfire,distance=..7] at @s if block ~ ~ ~ minecraft:campfire[lit=true] run tag @s add to.cf.fail
execute as @e[tag=to.cf.fail,distance=..12] at @s run function torchout:placement-api_campfire/detection/out
#change every unidentified campfire to a AoEC entity with to.cf.place
fill ~7 ~7 ~7 ~-7 ~-7 ~-7 minecraft:command_block{auto:1b,Command:"summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[\"to.cf.place\"]}"} replace minecraft:campfire[lit=true]
#"out of world" kind-of-fix (to fix this: from 0 to 7 AND from 0 to -7 = 15*5 = 75 lines - no thank you, this will have to do)
fill ~7 ~3 ~7 ~-7 ~-3 ~-7 minecraft:command_block{auto:1b,Command:"summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:[\"to.cf.place\"]}"} replace minecraft:campfire[lit=true]
execute as @e[tag=to.cf.fail,distance=..12] at @s run function torchout:placement-api_campfire/detection/in
scoreboard players reset @s to.campfire
