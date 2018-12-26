#removes tag if not SelectedItem anymore
tag @s[nbt=!{SelectedItem:{id:"minecraft:blue_orchid",tag:{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:2}]}}}] remove wt.sad_orchid
tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:blue_orchid",tag:{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0}]}}]}] remove wt.sad_orchid
#effects
execute at @s[scores={wt.rng=1}] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^-0.15 ^ ^0.275 0 0 0 1 1 normal
##initiating placement of sad_orchid (further steps are being taken in sad_orchid/placement)
#summoning amount of ray detectors
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
execute at @s[scores={wt.sad_orchid=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
#aligning the dray detectors
tp @e[tag=wt.R.sad_orchid,type=minecraft:area_effect_cloud,sort=nearest,limit=21] @s[scores={wt.sad_orchid=1..}]
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^0.5 ^0.5 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^0.5 ^-0.5 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-0.5 ^0.5 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-0.5 ^-0.5 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^0.5 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^-0.5 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^0.5 ^ ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-0.5 ^ ^

execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^1 ^1 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^1 ^-1 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-1 ^1 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-1 ^-1 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^1 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^-1 ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^1 ^ ^
execute at @s[scores={wt.sad_orchid=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-1 ^ ^

execute at @s[scores={wt.sad_orchid=1..}] as @e[tag=wt.R.sad_orchid,type=minecraft:area_effect_cloud,sort=nearest,limit=21] at @s run tp @s ~ ~1.5 ~
