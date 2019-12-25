execute as @p[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s run tp @s ~ ~ ~
tp @s ~ ~-1000 ~
kill @s
kill @e[type=minecraft:item,limit=1,sort=nearest,distance=..8,nbt={Item:{id:"minecraft:saddle"}}]
