summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["wt.sad_orchid","wt.SU.sad_orchid"]}
#centralizing the area_effect_cloud
summon minecraft:leash_knot ~ ~300 ~ {Tags:["wt.T.sad_orchid"]}
execute as @e[tag=wt.sad_orchid,tag=wt.SU.sad_orchid,type=minecraft:area_effect_cloud,limit=1,sort=nearest] at @s at @e[tag=wt.T.sad_orchid,type=minecraft:leash_knot,sort=nearest,limit=1] run tp @s ~ ~-300 ~
#end loop
scoreboard players remove @p[scores={wt.sad_orchid=1..}] wt.sad_orchid 1
#calling sad_orchid/setup
execute as @e[tag=wt.sad_orchid,tag=wt.SU.sad_orchid,type=minecraft:area_effect_cloud,limit=1,sort=nearest] at @s as @e[tag=wt.T.sad_orchid,type=minecraft:leash_knot,sort=nearest,limit=1] at @s run function witchtrading:sad_orchid/setup