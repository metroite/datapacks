#determine if there already is a marked pillager, if so take over its scores
execute as @e[type=minecraft:pillager,scores={sv.center_x=1..,sv.center_y=1..sv.center_z=1..},tag=sv.marked] run function smartvillage:outpost/center_known
execute unless entity @e[type=minecraft:pillager,scores={sv.center_x=1..,sv.center_y=1..sv.center_z=1..},tag=sv.marked] run function smartvillage:outpost/mark
