#Plaers join team wt.friendly
execute at @e[type=minecraft:witch,team=!wt.friendly,tag=!wt.traded,tag=!wt.blocked] run team join wt.friendly @p[team=!wt.friendly,distance=..6,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}]

#Executes once if coming close to witches
execute as @e[type=minecraft:witch,team=!wt.friendly,tag=!wt.traded,tag=!wt.blocked] at @s unless entity @a[team=!wt.friendly,distance=..12] run function witchtrading:befriendwitch

#Determines what friendly witches do
execute as @e[team=wt.friendly,type=minecraft:witch] at @s run function witchtrading:friendlywitch

#Team handling
execute as @a[team=wt.friendly,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run team leave @s
execute as @a[team=wt.friendly] at @s unless entity @e[type=minecraft:witch,distance=..6] run team leave @s
execute at @e[type=minecraft:witch,tag=!wt.traded,tag=!wt.blocked] run team join friendly @p[distance=..6,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}]
team leave @e[type=minecraft:witch,tag=wt.blocked]

#Witches get moved into the same team as the player
execute at @a[nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}] run team join wt.friendly @e[distance=..6,type=minecraft:witch,tag=!wt.traded,tag=!wt.blocked]

#Invisible Villager:
execute as @e[type=minecraft:villager,team=wt.friendly,nbt={Silent:1b}] at @s run function witchtrading:witchvillager

#Effects and Potion
execute at @a[team=wt.friendly,scores={wt.twv=1..}] as @e[team=wt.friendly,distance=..6,tag=wt.traded,limit=1,sort=nearest] at @s run function witchtrading:traded
scoreboard players reset @a[scores={wt.twv=1..}] wt.twv
execute as @a[nbt={ActiveEffects:[{Id:20b,Amplifier:5b,Duration:20,ShowParticles:0b}]}] run function witchtrading:potion
execute as @a[scores={wt.rng=1..}] if score rngmax wt.rng < @s wt.rng run scoreboard players reset @s wt.rng

#If you trade and take away your potato off of your selected slot because you want to trade that item
execute as @a[scores={wt.ttv=1..}] at @s run function witchtrading:trading
tag @a[tag=wt.setup,team=!wt.friendly] remove wt.setup
execute as @a[tag=wt.setup] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run tag @e[team=wt.friendly,type=minecraft:witch,distance=..6,limit=1,sort=nearest,tag=!wt.traded] add wt.blocked
execute as @a[tag=wt.setup] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run team leave @s

#Sad blue_orchid
execute as @a[scores={wt.rng=1},nbt={Inventory:[{id:"minecraft:blue_orchid",tag:{HideFlags:3,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:2}]}}]}] at @s positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^-0.15 ^ ^0.275 0 0 0 1 1 normal

#feature-compatibility: graves
execute at @e[tag=wt.shinigami] run particle minecraft:dust 0.2314 0.2314 0.25098 2 ~ ~1 ~ 3 2 3 1 2 normal
execute at @e[tag=wt.shinigami] run effect give @a[distance=..6] blindness 2 0 true
