execute unless block ~ ~ ~ minecraft:blue_orchid run tp @s ^ ^ ^0.5
scoreboard players add @s wt.sad_orchid 1
execute as @s[scores={wt.sad_orchid=..14}] at @s unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/placement
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["wt.sad_orchid","wt.SU.sad_orchid"]}
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid run summon minecraft:leash_knot ~ ~300 ~ {Tags:["wt.T.sad_orchid"]}
execute as @e[tag=wt.sad_orchid,tag=wt.SU.sad_orchid,type=minecraft:area_effect_cloud] at @s at @e[tag=wt.T.sad_orchid,type=minecraft:leash_knot,sort=nearest,limit=1] run tp @s ~ ~-300 ~
kill @e[tag=wt.T.sad_orchid,type=minecraft:leash_knot]
tag @e[tag=wt.sad_orchid,tag=wt.SU.sad_orchid,type=minecraft:area_effect_cloud] remove wt.SU.sad_orchid
execute positioned ^ ^ ^0.5 if block ~ ~ ~ minecraft:blue_orchid run scoreboard players remove @p[scores={wt.sad_orchid=1..}] wt.sad_orchid 1
