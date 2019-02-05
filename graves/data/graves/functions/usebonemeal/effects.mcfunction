#removes tag
tag @s remove g.usebonemeal
##initiating placement (further steps are being taken in placement function)
#summoning ray
execute at @s[scores={g.usebonemeal=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["g.R.sapling"],Duration:1}
#aligning the ray
execute as @s[scores={g.usebonemeal=1..}] run tp @e[tag=g.R.sapling,type=minecraft:area_effect_cloud,sort=nearest,limit=1] @s
execute at @s[scores={g.usebonemeal=1..}] as @e[tag=g.R.sapling,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
#further grass related mealing
execute as @s[scores={g.usebonemeal=1..}] run function graves:usebonemeal/tall_grass
#advancement granting
execute as @s[scores={g.usebonemeal=1..}] run advancement grant @s only graves:use_skull_dust
