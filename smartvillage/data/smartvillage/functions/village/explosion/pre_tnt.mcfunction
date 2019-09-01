#calculate distance
function smartvillage:village/common/get_pos
#calculate distance to sturcture center defined by the marked entity by subtracting the two points and seeing if they are close to 0
scoreboard players operation @s sv.center_x -= @e[limit=1,sort=nearest,tag=sv.marked,distance=..200] sv.center_x
scoreboard players operation @s sv.center_y -= @e[limit=1,sort=nearest,tag=sv.marked,distance=..200] sv.center_y
scoreboard players operation @s sv.center_z -= @e[limit=1,sort=nearest,tag=sv.marked,distance=..200] sv.center_z
#cancel if in village
execute if score @s sv.center_x matches -90..90 if score @s sv.center_y matches -50..50 if score @s sv.center_z matches -90..90 run function smartvillage:village/explosion/tnt
