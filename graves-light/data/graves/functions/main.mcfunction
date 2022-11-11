#particles for g.skull (AoEC)
execute as @e[type=minecraft:area_effect_cloud,tag=g.skull] at @s run function graves:skull/particles
#detecting direction
execute as @a[scores={g.deaths=1..}] at @s run function graves:skull/direction_detect
scoreboard players set @a[scores={g.deaths=1..}] g.deaths 0
#"Skull Dust" sapling bone mealing (item random movement)
execute as @e[type=minecraft:item,tag=g.skull_dusty] at @s run function graves:usebonemeal/sapling/growth

##placement-API: Skull Dust as bone meal
#calling effects if item is selected
execute as @a[tag=g.usebonemeal] at @s run function graves:usebonemeal/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add g.usebonemeal
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add g.usebonemeal
scoreboard players reset @a g.usebonemeal
