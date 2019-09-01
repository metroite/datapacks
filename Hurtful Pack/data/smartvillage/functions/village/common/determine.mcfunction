execute if score @s sv.center_x matches -90..90 if score @s sv.center_y matches -50..50 if score @s sv.center_z matches -90..90 run function smartvillage:village/inside
execute unless score @s sv.center_x matches -90..90 run function smartvillage:village/outside
execute unless score @s[tag=!sv.outside] sv.center_y matches -50..50 run function smartvillage:village/outside
execute unless score @s[tag=!sv.outside] sv.center_z matches -90..90 run function smartvillage:village/outside
#stop multiple calls
tag @s remove sv.outside
