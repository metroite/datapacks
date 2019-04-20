#replace arrow with ender_pearl
summon minecraft:ender_pearl ~ ~ ~ {Tags:["ue.ea.arrow"]}
data modify entity @e[type=minecraft:ender_pearl,tag=ue.ea.arrow,limit=1,sort=nearest,distance=..3] Motion set from entity @s Motion
data modify entity @e[type=minecraft:ender_pearl,tag=ue.ea.arrow,limit=1,sort=nearest,distance=..3] owner.M set from entity @p[scores={ue.ea.shoot=1..},distance=..2] UUIDMost
data modify entity @e[type=minecraft:ender_pearl,tag=ue.ea.arrow,limit=1,sort=nearest,distance=..3] owner.M set from entity @p[scores={ue.ea.shootc=1..},distance=..2] UUIDMost
data modify entity @e[type=minecraft:ender_pearl,tag=ue.ea.arrow,limit=1,sort=nearest,distance=..3] owner.L set from entity @p[scores={ue.ea.shoot=1..},distance=..2] UUIDLeast
data modify entity @e[type=minecraft:ender_pearl,tag=ue.ea.arrow,limit=1,sort=nearest,distance=..3] owner.L set from entity @p[scores={ue.ea.shootc=1..},distance=..2] UUIDLeast
kill @s
