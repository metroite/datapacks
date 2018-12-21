tag @s[nbt=!{SelectedItem:{id:"minecraft:blue_orchid",tag:{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:2}]}}}] remove wt.sad_orchid

#effects
execute at @s[scores={wt.rng=1}] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^-0.15 ^ ^0.275 0 0 0 1 1 normal

#placement of sad_orchid
execute at @s[scores={wt.sad_orchid=1}] run summon area_effect_cloud ~ ~ ~ {Tags:["wt.R.sad_orchid"],Duration:1}
tp @e[tag=wt.R.sad_orchid,type=minecraft:area_effect_cloud,sort=nearest,limit=1] @s[scores={wt.sad_orchid=1}]
execute at @s[scores={wt.sad_orchid=1}] as @e[tag=wt.R.sad_orchid,type=minecraft:area_effect_cloud,sort=nearest,limit=1] at @s run tp @s ~ ~1.5 ~
