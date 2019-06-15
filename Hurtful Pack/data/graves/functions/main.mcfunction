#g.deaths
execute as @p[limit=1,sort=random] unless score @s g.deaths >= ZERO g.deaths run scoreboard players add @s g.deaths 0

#compatibility to limitedlife (further compatibility in function limitedlife:graves)
scoreboard players reset @a[scores={ll.deaths=10..},dx=5,dy=5,dz=-5] g.deaths
#compatibility to loud2x2tnt
function loud2x2tnt:graves

#detecting direction
execute as @a[scores={g.deaths=1..}] at @s run function graves:skull/direction_detect
#effects for g.dropskull
execute as @e[tag=g.dropskull,nbt={OnGround:1b}] at @s run function graves:skull/drop
#particles for g.skull (AoEC)
execute as @e[tag=g.skull] at @s run function graves:skull/particles
#move g.bones to the ground if OnGround
execute as @e[tag=g.bone] at @s run function graves:skull/bone
#global playound if a player dies
execute as @p[scores={g.deaths=1..}] run playsound minecraft:item.elytra.flying block @a ~ ~ ~ 0.25 0.5 0.25
scoreboard players set @p[scores={g.deaths=1..}] g.deaths 0

#"Skull Dust" sapling bone mealing
execute as @e[tag=g.skull_dusty] at @s run function graves:usebonemeal/sapling/growth

##placement-API: Skull Dust as bone meal
#calling effects if item is selected
execute as @a[tag=g.usebonemeal] at @s run function graves:usebonemeal/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}}] add g.usebonemeal
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:bone_meal",tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:bone_meal"}}] run tag @s add g.usebonemeal
scoreboard players reset @a g.usebonemeal

#calling landed_flower.mcfunction: kill g.flowers if OnGround and place random tall_flower
execute as @e[tag=g.flower,nbt={OnGround:1b}] at @s run function graves:usebonemeal/landed_flower

#mushroom spreads if it hits the ground
execute as @e[tag=g.mushroom] at @s run function graves:usebonemeal/sapling/mushroom/placement

#generate tree in world and revoke biome detection advancement
execute as @e[tag=g.sapling_drop] at @s run function graves:tree_generator/tick
execute as @a at @s unless entity @e[tag=g.sapling_drop,distance=..280] unless entity @e[tag=g.notree,distance=..280] run function graves:tree_generator/revoke
