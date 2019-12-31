#scoreboards
scoreboard objectives remove ht.rotation
scoreboard objectives remove ht.speed

#tick
kill @e[type=minecraft:pig,tag=ht.passenger]
tag @e[type=minecraft:horse] remove ht.armored
