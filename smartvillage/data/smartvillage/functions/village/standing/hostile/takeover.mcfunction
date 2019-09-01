scoreboard players operation @s sv.center_x = @e[tag=sv.marked,distance=..200,type=minecraft:villager] sv.center_x
scoreboard players operation @s sv.center_y = @e[tag=sv.marked,distance=..200,type=minecraft:villager] sv.center_y
scoreboard players operation @s sv.center_z = @e[tag=sv.marked,distance=..200,type=minecraft:villager] sv.center_z
tag @s add sv.marked
data merge entity @s {PersistenceRequired:1b}
execute if entity @s[scores={sv.center_x=0,sv.center_y=0,sv.center_z=0}] run function smartvillage:village/standing/hostile/takeover
