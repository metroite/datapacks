#tick interval (reduce if it causes lags)
scoreboard players operation €tick€ ll.cooking = @s ll.cooking
scoreboard players operation €tick€ ll.cooking %= $interval$ ll.cooking
execute if score €tick€ ll.cooking matches 0 as @e[type=minecraft:end_crystal,distance=..1,limit=1] run function limitedlife:curing/beam/target
