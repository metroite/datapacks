#re-schedule
schedule function graves:main100 100t
#effects for g.dropskull##
execute as @e[type=minecraft:armor_stand,tag=g.dropskull,nbt={OnGround:1b}] at @s run function graves:skull/drop
#calling landed_flower.mcfunction: kill g.flowers if OnGround and place random tall_flower##
execute as @e[type=minecraft:armor_stand,tag=g.flower,nbt={OnGround:1b}] at @s run function graves:usebonemeal/landed_flower