#re-schedule
execute if score $witchtrading$ hp.storeboard matches 1.. run schedule function witchtrading:main20 20t
#witch
tag @a[tag=!wt.poisonpotato,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}] add wt.poisonpotato
execute as @a[tag=wt.poisonpotato] at @s as @e[type=minecraft:witch,distance=..6,tag=!wt.blocked] run function witchtrading:witch/normal/friendly
scoreboard players reset @a wt.twv
#sad_orchid particle#
execute as @e[tag=wt.sad_orchid,type=minecraft:area_effect_cloud] at @s run function witchtrading:sad_orchid/particle
#particle effects if close to a sad_orchid (if this is inside of sad_orchid/particle this particle effect will be executed scaling with the amount of sad_orchids around the player)#
execute as @a at @s if entity @e[type=minecraft:area_effect_cloud,distance=..3,tag=wt.sad_orchid] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^0.175 ^ ^0.275 0 0 0 1 1 normal
