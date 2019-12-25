tag @s remove ht.armored
#summon saddle if armored
execute if entity @s[nbt={ArmorItem:{}}] run function horsetogether:horse/passenger/summon
#remove pig if not armored
execute unless entity @s[tag=ht.armored] as @e[type=minecraft:pig,distance=..8,tag=ht.passenger,limit=1,sort=nearest] run function horsetogether:horse/passenger/kill
