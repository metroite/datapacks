#actual detecting ray
execute unless block ~ ~ ~ minecraft:blue_orchid run tp @s ^ ^ ^0.5
scoreboard players add @s wt.sad_orchid 1
execute as @s[scores={wt.sad_orchid=..16}] at @s unless entity @e[type=area_effect_cloud,tag=wt.sad_orchid,tag=wt.SU.sad_orchid,distance=..8] unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/placement
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid unless entity @e[type=area_effect_cloud,tag=wt.sad_orchid,distance=..0.75] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["wt.sad_orchid","wt.SU.sad_orchid"]}
#centralizing
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid run summon minecraft:leash_knot ~ ~300 ~ {Tags:["wt.T.sad_orchid"]}
execute as @e[tag=wt.sad_orchid,tag=wt.SU.sad_orchid,type=minecraft:area_effect_cloud] at @s at @e[tag=wt.T.sad_orchid,type=minecraft:leash_knot,sort=nearest,limit=1] run tp @s ~ ~-300 ~
#end loop
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid if entity @e[type=area_effect_cloud,tag=wt.sad_orchid,tag=wt.SU.sad_orchid,distance=..0.75] run scoreboard players remove @p[scores={wt.sad_orchid=1..}] wt.sad_orchid 1
#calling sad_orchid/setup
execute as @e[tag=wt.T.sad_orchid,type=minecraft:leash_knot] at @s run function witchtrading:sad_orchid/setup
