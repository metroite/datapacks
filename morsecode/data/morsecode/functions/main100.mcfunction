#re-schedule
schedule function morsecode:main100 100t
#determine if sender or receiver or nothing, if nothing remove tag
execute as @e[type=minecraft:item_frame] at @s run function morsecode:device/determine
