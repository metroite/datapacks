#replace arrow with ender_pearl
summon minecraft:arrow ~ ~ ~ {Tags:["ue.test"],OwnerUUIDLeast:0,OwnerUUIDMost:0,}
execute store result entity @e[type=minecraft:arrow,tag=ue.test,limit=1,sort=nearest,distance=..3] Motion[0] double 1 run data get entity @s Motion[0]
execute store result entity @e[type=minecraft:arrow,tag=ue.test,limit=1,sort=nearest,distance=..3] Motion[1] double 1 run data get entity @s Motion[1]
execute store result entity @e[type=minecraft:arrow,tag=ue.test,limit=1,sort=nearest,distance=..3] Motion[2] double 1 run data get entity @s Motion[2]
execute store result entity @e[type=minecraft:arrow,tag=ue.test,limit=1,sort=nearest,distance=..3] OwnerUUIDMost long 1 run data get entity @p[scores={ue.ea.shoot=1..}] UUIDMost
execute store result entity @e[type=minecraft:arrow,tag=ue.test,limit=1,sort=nearest,distance=..3] OwnerUUIDLeast long 1 run data get entity @p[scores={ue.ea.shoot=1..}] UUIDLeast
kill @s
