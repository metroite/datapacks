#removes tag
tag @s remove sp.glass_block
##initiating placement of sapphire_glassblock (further steps are being taken in sapphire_glassblock/placement)
#summoning ray
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
#aligning the ray
execute as @s[scores={sp.glass_placed=1..}] run tp @e[tag=sp.R.glass,type=minecraft:area_effect_cloud,sort=nearest,limit=1] @s
execute at @s[scores={sp.glass_placed=1..}] as @e[tag=sp.R.glass,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
