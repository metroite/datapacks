#removes tag
tag @s remove sp.lr.pa.tag
##initiating placement of lightning_rod (further steps are being taken in lightning_rod/placement)
#summoning ray
execute at @s[scores={sp.lr.pa.torch=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.torch"],Duration:1}
#aligning the ray
execute as @s[scores={sp.lr.pa.torch=1..}] run tp @e[tag=sp.R.torch,type=minecraft:area_effect_cloud,sort=nearest,limit=1] @s
execute at @s[scores={sp.lr.pa.torch=1..}] as @e[tag=sp.R.torch,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
