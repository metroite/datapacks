#removes tag if not SelectedItem anymore
tag @s remove sp.glass_block
##initiating placement of sad_orchid (further steps are being taken in sad_orchid/placement)
#summoning amount of ray detectors
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
execute at @s[scores={sp.glass_placed=1..}] run summon area_effect_cloud ~ ~ ~ {Tags:["sp.R.glass"],Duration:1}
#aligning the dray detectors
tp @e[tag=sp.R.glass,type=minecraft:area_effect_cloud,sort=nearest,limit=21] @s[scores={sp.glass_placed=1..}]
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^0.5 ^0.5 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^0.5 ^-0.5 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-0.5 ^0.5 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-0.5 ^-0.5 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^0.5 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^-0.5 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^0.5 ^ ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-0.5 ^ ^

execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^1 ^1 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^1 ^-1 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-1 ^1 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-1 ^-1 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^1 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^ ^-1 ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^1 ^ ^
execute at @s[scores={sp.glass_placed=1..}] as @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] run tp @s ^-1 ^ ^

execute at @s[scores={sp.glass_placed=1..}] as @e[tag=sp.R.glass,type=minecraft:area_effect_cloud,sort=nearest,limit=21] at @s run tp @s ~ ~1.5 ~
