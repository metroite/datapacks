execute as @s[tag=!wt.traded] at @s if entity @p[scores={wt.ttv=..0},distance=..6,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] run tag @s add wt.blocked
execute as @s[tag=!wt.traded] at @s unless entity @p[distance=..6] run tag @s add wt.blocked
execute if entity @e[type=minecraft:villager,nbt={HurtTime:10s},distance=..2,team=wt.friendly] run tag @s add wt.blocked
execute as @e[type=minecraft:villager,nbt={HurtTime:10s},distance=..2,team=wt.friendly] run tp @s ~ -500 ~
tag @s[nbt={HurtTime:10s}] add wt.blocked
execute as @s[tag=wt.blocked] at @s run playsound minecraft:entity.villager.no hostile @a[distance=..12] ~ ~ ~ 2 1.5
execute as @s[tag=wt.blocked] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.25 0.1 0.25 1 3 force
execute if entity @p[scores={wt.ttv=..0},distance=..6,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] run team leave @s
execute unless entity @p[distance=..6] run team leave @s

#Invisible villager
execute as @s[tag=!wt.traded,tag=!wt.blocked] at @s run tp @e[type=minecraft:villager,team=wt.friendly,nbt={Silent:1b},distance=..1,limit=1,sort=nearest] ^ ^ ^0.2 facing entity @p[distance=..6,team=wt.friendly]

#If you hit the witch
execute at @s[nbt={HurtTime:10s}] as @a[distance=..7,team=wt.friendly] run team leave @s
