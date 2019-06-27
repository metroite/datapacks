#tp based on score
execute at @s if score x vd.coordinates matches 1000000.. run tp ~1000000 ~ ~
execute at @s if score x vd.coordinates matches 1000000.. run scoreboard players remove x vd.coordinates 1000000
execute at @s if score x vd.coordinates matches 100000.. run tp ~100000 ~ ~
execute at @s if score x vd.coordinates matches 100000.. run scoreboard players remove x vd.coordinates 100000
execute at @s if score x vd.coordinates matches 10000.. run tp ~10000 ~ ~
execute at @s if score x vd.coordinates matches 10000.. run scoreboard players remove x vd.coordinates 10000
execute at @s if score x vd.coordinates matches 1000.. run tp ~1000 ~ ~
execute at @s if score x vd.coordinates matches 1000.. run scoreboard players remove x vd.coordinates 1000
execute at @s if score x vd.coordinates matches 100.. run tp ~100 ~ ~
execute at @s if score x vd.coordinates matches 100.. run scoreboard players remove x vd.coordinates 100
execute at @s if score x vd.coordinates matches 10.. run tp ~10 ~ ~
execute at @s if score x vd.coordinates matches 10.. run scoreboard players remove x vd.coordinates 10
execute at @s if score x vd.coordinates matches 1.. run tp ~1 ~ ~
execute at @s if score x vd.coordinates matches 1.. run scoreboard players remove x vd.coordinates 1
execute at @s if score x vd.coordinates matches ..-1000000 run tp ~-1000000 ~ ~
execute at @s if score x vd.coordinates matches ..-1000000 run scoreboard players add x vd.coordinates 1000000
execute at @s if score x vd.coordinates matches ..-100000 run tp ~-100000 ~ ~
execute at @s if score x vd.coordinates matches ..-100000 run scoreboard players add x vd.coordinates 100000
execute at @s if score x vd.coordinates matches ..-10000 run tp ~-10000 ~ ~
execute at @s if score x vd.coordinates matches ..-10000 run scoreboard players add x vd.coordinates 10000
execute at @s if score x vd.coordinates matches ..-1000 run tp ~-1000 ~ ~
execute at @s if score x vd.coordinates matches ..-1000 run scoreboard players add x vd.coordinates 1000
execute at @s if score x vd.coordinates matches ..-100 run tp ~-100 ~ ~
execute at @s if score x vd.coordinates matches ..-100 run scoreboard players add x vd.coordinates 100
execute at @s if score x vd.coordinates matches ..-10 run tp ~-10 ~ ~
execute at @s if score x vd.coordinates matches ..-10 run scoreboard players add x vd.coordinates 10
execute at @s if score x vd.coordinates matches ..-1 run tp ~-1 ~ ~
execute at @s if score x vd.coordinates matches ..-1 run scoreboard players add x vd.coordinates 1
#tp recusively
execute at @s unless score x vd.coordinates matches 0 run function voiddimension:rift/x_teleport
execute at @s if score x vd.coordinates matches 0 run function voiddimension:rift/z_teleport
