#define players position
execute as @p run function smartvillage:village/common/get_pos
#calculate distance to sturcture center defined by the marked entity by subtracting the two points and seeing if they are close to 0
scoreboard players operation @p sv.center_x -= @s sv.center_x
scoreboard players operation @p sv.center_y -= @s sv.center_y
scoreboard players operation @p sv.center_z -= @s sv.center_z
#call inside function
execute as @p run function smartvillage:village/common/determine
#make failsafe know this function has been called
tag @p add sv.determined
