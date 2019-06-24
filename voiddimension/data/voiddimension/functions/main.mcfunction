#the rift
execute as @e[tag=vd.rift] at @s as @p[distance=..0.25] run function voiddimension:rift/switch
#slow falling after tp
execute as @a[tag=vd.tp_done] at @s run function voiddimension:rift/tp_done
#grave entry
execute as @a[nbt={OnGround:1b,Dimension:0},x_rotation=-10..10] at @s if block ~ ~1 ~ minecraft:wither_rose if block ~ ~ ~ minecraft:soul_sand run function voiddimension:grave/block_check
execute as @a[scores={vd.grave=1..}] at @s unless block ~ ~ ~ minecraft:soul_sand run scoreboard players reset @s vd.grave
execute as @e[tag=vd.grave.temp] at @s unless entity @p[scores={vd.grave=1..},distance=..4] run kill @s
#in void
execute as @a[tag=vd.in_void] at @s run function voiddimension:void/tick
