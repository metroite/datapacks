#compatibility to limitedlife
scoreboard players reset @a[scores={ll.deaths=10..},dx=5,dy=5,dz=-5] g.deaths
#compatibility to loud2x2tnt
function loud2x2tnt:graves

#detecting direction
execute as @a[scores={g.deaths=1..}] at @s run function graves:skull/direction_detect
#global playound if a player dies
execute as @p[scores={g.deaths=1..}] run playsound minecraft:item.elytra.flying block @a ~ ~ ~ 0.25 0.5 0.25
scoreboard players set @p[scores={g.deaths=1..}] g.deaths 0
#"Skull Dust" sapling bone mealing (item random movement)
execute as @e[type=minecraft:item,tag=g.skull_dusty] at @s run function graves:usebonemeal/sapling/growth

##placement-API: Skull Dust as bone meal
#calling effects if item is selected
execute as @a[tag=g.usebonemeal] at @s run function graves:usebonemeal/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add g.usebonemeal
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add g.usebonemeal
scoreboard players reset @a g.usebonemeal
