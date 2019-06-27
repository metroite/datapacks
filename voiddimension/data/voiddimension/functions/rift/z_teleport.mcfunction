#tp based on score
execute at @s if score z vd.coordinates matches 1000000.. run tp ~ ~ ~1000000
execute at @s if score z vd.coordinates matches 1000000.. run scoreboard players remove z vd.coordinates 1000000
execute at @s if score z vd.coordinates matches 100000.. run tp ~ ~ ~100000
execute at @s if score z vd.coordinates matches 100000.. run scoreboard players remove z vd.coordinates 100000
execute at @s if score z vd.coordinates matches 10000.. run tp ~ ~ ~10000
execute at @s if score z vd.coordinates matches 10000.. run scoreboard players remove z vd.coordinates 10000
execute at @s if score z vd.coordinates matches 1000.. run tp ~ ~ ~1000
execute at @s if score z vd.coordinates matches 1000.. run scoreboard players remove z vd.coordinates 1000
execute at @s if score z vd.coordinates matches 100.. run tp ~ ~ ~100
execute at @s if score z vd.coordinates matches 100.. run scoreboard players remove z vd.coordinates 100
execute at @s if score z vd.coordinates matches 10.. run tp ~ ~ ~10
execute at @s if score z vd.coordinates matches 10.. run scoreboard players remove z vd.coordinates 10
execute at @s if score z vd.coordinates matches 1.. run tp ~ ~ ~1
execute at @s if score z vd.coordinates matches 1.. run scoreboard players remove z vd.coordinates 1
execute at @s if score z vd.coordinates matches ..-1000000 run tp ~ ~ ~-1000000
execute at @s if score z vd.coordinates matches ..-1000000 run scoreboard players add z vd.coordinates 1000000
execute at @s if score z vd.coordinates matches ..-100000 run tp ~ ~ ~-100000
execute at @s if score z vd.coordinates matches ..-100000 run scoreboard players add z vd.coordinates 100000
execute at @s if score z vd.coordinates matches ..-10000 run tp ~ ~ ~-10000
execute at @s if score z vd.coordinates matches ..-10000 run scoreboard players add z vd.coordinates 10000
execute at @s if score z vd.coordinates matches ..-1000 run tp ~ ~ ~-1000
execute at @s if score z vd.coordinates matches ..-1000 run scoreboard players add z vd.coordinates 1000
execute at @s if score z vd.coordinates matches ..-100 run tp ~ ~ ~-100
execute at @s if score z vd.coordinates matches ..-100 run scoreboard players add z vd.coordinates 100
execute at @s if score z vd.coordinates matches ..-10 run tp ~ ~ ~-10
execute at @s if score z vd.coordinates matches ..-10 run scoreboard players add z vd.coordinates 10
execute at @s if score z vd.coordinates matches ..-1 run tp ~ ~ ~-1
execute at @s if score z vd.coordinates matches ..-1 run scoreboard players add z vd.coordinates 1
#tp recusively
execute at @s unless score z vd.coordinates matches 0 run function voiddimension:rift/z_teleport
execute at @s if score z vd.coordinates matches 0 run particle large_smoke ~ ~1 ~ 0.25 0.5 0.25 0.1 200 force
execute at @s if score z vd.coordinates matches 0 run summon minecraft:lightning_bolt ~ 300 ~
