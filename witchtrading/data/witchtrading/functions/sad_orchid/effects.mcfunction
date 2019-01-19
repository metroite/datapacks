#removes tag if not SelectedItem anymore
tag @s remove wt.sad_orchid
#effects
execute at @s[scores={wt.rng=1}] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^-0.15 ^ ^0.275 0 0 0 1 1 normal
##initiating placement of sad_orchid (further steps are being taken in sad_orchid/placement)
#summoning ray
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
#aligning the ray
execute as @s[scores={wt.sad_orchid=1..}] run tp @e[tag=wt.R.sad_orchid,sort=nearest,limit=1] @s[scores={wt.sad_orchid=1..}]
execute at @s[scores={wt.sad_orchid=1..}] as @e[tag=wt.R.sad_orchid,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
