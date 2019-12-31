##ender arrow
#tick player and determine bow or crossbow
execute if score $enderarrows$ ue.ea.shoot matches 1.. as @a at @s run function usefulender:enderarrow/determine

#ender_pearls deal no damage and dragon_eggs teleport to someplace far away
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick

#reset enderarrow scores
scoreboard players reset @a ue.ea.shoot
scoreboard players reset @a ue.ea.shootc
