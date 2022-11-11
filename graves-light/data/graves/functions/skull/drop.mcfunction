#summoning the g.bones around the skull
execute align y if entity @s[distance=..0.001] run function graves:skull/grave
execute align y unless entity @s[distance=..0.001] positioned ~ ~1 ~ run function graves:skull/grave
#set name if enabled
execute if score $display_name$ g.deaths matches 1.. as @e[type=minecraft:area_effect_cloud,distance=..3,limit=1,tag=g.skull] run function graves:skull/display_name
kill @s
