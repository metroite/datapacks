#re-schedule
schedule function graves:main20 20t
#move g.bones to the ground if OnGround#
execute as @e[type=minecraft:armor_stand,tag=g.bone] at @s run function graves:skull/bone
#mushroom spreads if it hits the ground#
execute as @e[type=minecraft:armor_stand,tag=g.mushroom] at @s run function graves:usebonemeal/sapling/mushroom/placement
