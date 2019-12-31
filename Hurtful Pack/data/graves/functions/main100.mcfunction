#re-schedule
execute if score $graves$ hp.storeboard matches 1.. run schedule function graves:main100 100t
#effects for g.dropskull##
execute as @e[type=minecraft:armor_stand,tag=g.dropskull,nbt={OnGround:1b}] at @s run function graves:skull/drop
#calling landed_flower.mcfunction: kill g.flowers if OnGround and place random tall_flower##
execute as @e[type=minecraft:armor_stand,tag=g.flower,nbt={OnGround:1b}] at @s run function graves:usebonemeal/landed_flower
#generate tree in world and revoke biome detection advancement##
execute as @e[type=minecraft:armor_stand,tag=g.sapling_drop] at @s run function graves:tree_generator/tick
execute as @a at @s unless entity @e[type=minecraft:armor_stand,tag=g.sapling_drop,distance=..280] unless entity @e[type=minecraft:area_effect_cloud,tag=g.notree,distance=..280] run function graves:tree_generator/revoke
