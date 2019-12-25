#re-schedule
execute if score $horsetogether$ hp.storeboard matches 1.. run schedule function horsetogether:main50 50t
#summon second saddle if riding an horse, but first check if armored
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s positioned ~ ~-1 ~ as @e[type=minecraft:horse,distance=..0.25,limit=1] run function horsetogether:horse/armor_check
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s if entity @p[distance=0.5..10] positioned ~ ~-1 ~ as @e[type=minecraft:horse,distance=..0.25,limit=1] run function horsetogether:horse/armor_check
#kill saddle if there is no horse riding player
execute as @e[type=minecraft:pig,tag=ht.passenger] at @s unless entity @p[distance=..8,nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run function horsetogether:horse/passenger/kill
