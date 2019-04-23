execute as @s[tag=!wt.setup] if entity @e[team=wt.friendly,tag=!wt.traded,tag=!wt.blocked,type=minecraft:witch,distance=..6] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:600,CustomName:"{\"text\":\"wt.friendly\"}"}
execute unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run scoreboard players set @s wt.ttv 0
execute as @s[tag=!wt.setup] if entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run tag @s add wt.setup
