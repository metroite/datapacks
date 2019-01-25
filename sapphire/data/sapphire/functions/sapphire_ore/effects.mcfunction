#removes tag
tag @s remove sp.so.pa.tag
##initiating placement (further steps are being taken in placement)
#summoning ray
execute at @s[scores={sp.so.pa.ore=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.ore"],Duration:1}
#aligning the ray
execute as @s[scores={sp.so.pa.ore=1..}] run tp @e[tag=sp.R.ore,type=minecraft:area_effect_cloud,sort=nearest,limit=1] @s
execute at @s[scores={sp.so.pa.ore=1..}] as @e[tag=sp.R.ore,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
