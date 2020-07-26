#re-schedule
execute if score $horsetogether$ hp.storeboard matches 1.. run schedule function horsetogether:main50 50t
#summon second saddle if riding an armored horse
tag @a remove ht.riding
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] at @s if entity @p[distance=0.5..10] positioned ~ ~-1 ~ as @e[type=minecraft:horse,distance=..8,limit=1] run function horsetogether:horse/armor_check
#kill passenger seat if there is no rider nearby
execute as @e[type=minecraft:pig,tag=ht.passenger] at @s unless entity @p[distance=..8,tag=ht.riding] run function horsetogether:horse/passenger/kill
#reset sneak score (detect if unmounted)
scoreboard players reset @a ht.sneak
