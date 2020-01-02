fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_stained_glass replace air
fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_stained_glass replace piston_head
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:item,distance=..2,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:light_blue_stained_glass",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:light_blue_stained_glass",Count:1b}}]
execute positioned ~ ~0.5 ~ run playsound minecraft:ui.toast.in block @a ~ ~ ~ 2 2
execute as @p[distance=..1,nbt={OnGround:0b}] at @s positioned ~ ~0.4 ~ align y run tp @s ~ ~ ~
execute as @p[distance=..1] at @s run tp @s ^ ^ ^-0.5
execute positioned ~ ~-1 ~ as @p[distance=..1] at @s positioned ^ ^ ^-0.5 run tp @s ~ ~0.5 ~
