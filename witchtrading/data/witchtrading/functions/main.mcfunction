#Checks for players with poisonous potatoes near witches
execute as @e[team=friendly,type=minecraft:witch,tag=!traded] at @s if entity @p[scores={witchtrading.ttv=..0},distance=..6,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] run tag @s add blocked
execute as @e[team=friendly,type=minecraft:witch,tag=!traded] at @s unless entity @p[distance=..6] run tag @s add blocked
execute as @e[team=friendly,type=minecraft:witch,tag=blocked] at @s run playsound minecraft:entity.villager.no neutral @a[distance=..12] ~ ~ ~ 2 1.5
execute as @e[team=friendly,type=minecraft:witch,tag=blocked] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.25 0.1 0.25 1 3 force
execute as @e[team=friendly,type=minecraft:witch] at @s if entity @a[scores={witchtrading.ttv=..0},distance=..6,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] run team leave @s
execute as @e[team=friendly,type=minecraft:witch] at @s unless entity @a[distance=..6] run team leave @s
execute as @a[team=friendly,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=friendly] run team leave @s
execute as @a[team=friendly] at @s unless entity @e[type=minecraft:witch,distance=..6] run team leave @s
execute as @e[type=minecraft:witch,tag=!traded,tag=!blocked] at @s run team join friendly @p[distance=..6,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}]
team leave @e[type=minecraft:witch,tag=blocked]


#Executes once if coming close to witches
execute as @e[type=minecraft:witch,team=!friendly,tag=!traded,tag=!blocked] at @s unless entity @a[team=!friendly,distance=..12] run tp @s ~ ~ ~ facing entity @p[team=friendly,distance=..6,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}]
execute as @e[type=minecraft:witch,team=!friendly,tag=!traded,tag=!blocked] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:poisonous_potato"}},team=friendly,distance=..6] unless entity @a[team=!friendly,distance=..12] run playsound minecraft:entity.villager.trading neutral @a[distance=..12] ~ ~ ~ 2 1.5
#Invisible Villager gets spawned
execute as @e[team=!friendly,tag=!traded,tag=!blocked,type=minecraft:witch] at @s if entity @a[nbt={SelectedItem:{id:"minecraft:poisonous_potato"}},team=friendly,distance=..6] run function witchtrading:witches


#Witches get moved into the same team as the player
execute at @a[nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}] run team join friendly @e[distance=..6,type=minecraft:witch,tag=!traded,tag=!blocked]


#Invisible Villager:
execute as @e[team=friendly,tag=!traded,tag=!blocked,type=minecraft:witch] at @s run tp @e[type=minecraft:villager,team=friendly,nbt={Silent:1b},distance=..1,limit=1,sort=nearest] ^ ^ ^0.2 facing entity @p[distance=..6,team=friendly]
execute as @e[type=minecraft:villager,team=friendly,nbt={Silent:1b}] at @s unless entity @p[team=friendly,distance=..6] unless entity @p[scores={witchtrading.ttv=1..}] run tp ~ ~-500 ~
execute as @e[type=minecraft:villager,team=friendly,nbt={Silent:1b}] at @s unless entity @e[team=friendly,distance=..1,tag=!blocked] run tp ~ ~-500 ~
execute as @e[type=minecraft:villager,team=friendly,nbt={Silent:1b,Offers:{Recipes:[{rewardExp:1b,maxUses:1,uses:1,buy:{id:"minecraft:poisonous_potato",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Mysterious Potion\",\"color\":\"light_purple\"}"},Potion:"minecraft:water",CustomPotionColor:0}}}]}}] at @s run tag @e[team=friendly,tag=!traded,tag=!blocked,type=minecraft:witch] add traded


#Effects and Potion
execute at @a[team=friendly,scores={witchtrading.twv=1..}] as @e[team=friendly,distance=..6,tag=traded,limit=1,sort=nearest] at @s run playsound minecraft:entity.villager.yes neutral @a[distance=..12] ~ ~ ~ 2 1.5
execute at @a[team=friendly,scores={witchtrading.twv=1..}] as @e[team=friendly,distance=..6,tag=traded,limit=1,sort=nearest] at @s run particle minecraft:happy_villager ~ ~1.5 ~ 0.25 0.1 0.25 1 3 force
execute at @e[team=friendly,tag=traded] as @p[team=friendly,distance=..6,scores={witchtrading.twv=1..}] run advancement grant @s only witchtrading:root
scoreboard players reset @a[scores={witchtrading.twv=1..}] witchtrading.twv
execute as @a[nbt={ActiveEffects:[{Id:20b,Amplifier:5b,Duration:20,ShowParticles:0b}]}] run function witchtrading:potion
scoreboard players reset @a[scores={rng=15..}] rng


#If you trade and take away your potato off of your selected slot because you want to trade that item
execute as @a[scores={witchtrading.ttv=1..},tag=!setup] at @s if entity @e[team=friendly,tag=!traded,tag=!blocked,type=minecraft:witch,distance=..6] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:600,CustomName:"{\"text\":\"friendly\"}"}
execute as @a[scores={witchtrading.ttv=1..}] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=friendly] run scoreboard players set @s witchtrading.ttv 0
execute as @a[scores={witchtrading.ttv=1..},tag=!setup] at @s if entity @e[type=area_effect_cloud,distance=..1,name=friendly] run tag @s add setup
tag @a[tag=setup,team=!friendly] remove setup
execute as @a[tag=setup] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=friendly] run tag @e[team=friendly,type=minecraft:witch,distance=..6,limit=1,sort=nearest,tag=!traded] add blocked
execute as @a[tag=setup] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=friendly] run team leave @s


#If you hit the witch
execute at @e[nbt={HurtTime:10s},team=friendly,type=minecraft:witch] as @a[distance=..7,team=friendly] run team leave @s
tag @e[nbt={HurtTime:10s},team=friendly,type=minecraft:witch] add blocked
