#removes tag
tag @s remove sp.wd.pa.tag
##initiating placement (further steps are being taken in placement)
#summoning ray
execute at @s[scores={sp.wd.pa.detec=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.detector"],Duration:1}
#aligning the ray
execute as @s[scores={sp.wd.pa.detec=1..}] run tp @e[tag=sp.R.detector,type=minecraft:area_effect_cloud,sort=nearest,limit=1] @s
execute at @s[scores={sp.wd.pa.detec=1..}] as @e[tag=sp.R.detector,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
