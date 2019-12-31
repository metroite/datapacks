#re-schedule
execute if score $graves$ hp.storeboard matches 1.. run schedule function graves:main20 20t
#particles for g.skull (AoEC)
execute as @e[type=minecraft:area_effect_cloud,tag=g.skull] at @s run function graves:skull/particles
#move g.bones to the ground if OnGround#
execute as @e[type=minecraft:armor_stand,tag=g.bone] at @s run function graves:skull/bone
#mushroom spreads if it hits the ground#
execute as @e[type=minecraft:armor_stand,tag=g.mushroom] at @s run function graves:usebonemeal/sapling/mushroom/placement
