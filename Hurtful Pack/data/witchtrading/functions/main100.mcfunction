#re-schedule
execute if score $witchtrading$ hp.storeboard matches 1.. run schedule function witchtrading:main100 100t
#witch
execute as @e[type=minecraft:witch,team=wt.friendly] at @s run function witchtrading:witch/slow/friendly
#Team handling##
execute as @a[tag=wt.poisonpotato,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run tag @s remove wt.poisonpotato
execute as @a[team=wt.friendly,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run team leave @s
execute as @a[tag=wt.poisonpotato] at @s unless entity @e[type=minecraft:witch,distance=..6] run tag @s remove wt.poisonpotato
execute as @a[team=wt.friendly] at @s unless entity @e[type=minecraft:witch,distance=..6] run team leave @s
#scores
scoreboard players reset @a wt.ttv
#Invisible Villager:
execute as @e[type=minecraft:villager,team=wt.friendly] at @s unless entity @p[team=wt.friendly,distance=..6] run function witchtrading:witch/villager/kill
