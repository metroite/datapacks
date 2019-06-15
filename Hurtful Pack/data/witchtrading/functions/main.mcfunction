#Plaers join team wt.friendly
execute at @e[type=minecraft:witch,team=!wt.friendly,tag=!wt.traded,tag=!wt.blocked] run team join wt.friendly @p[team=!wt.friendly,distance=..6,nbt={SelectedItem:{id:"minecraft:poisonous_potato"}}]
#Executes once if coming close to witches
execute as @e[type=minecraft:witch,team=!wt.friendly,tag=!wt.traded,tag=!wt.blocked] at @s unless entity @a[team=!wt.friendly,distance=..12] run function witchtrading:befriendwitch

#Determines what friendly witches do
execute as @e[team=wt.friendly,type=minecraft:witch] at @s run function witchtrading:friendlywitch

#Team handling
execute as @a[team=wt.friendly,nbt=!{SelectedItem:{id:"minecraft:poisonous_potato"}}] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run team leave @s
execute as @a[team=wt.friendly] at @s unless entity @e[type=minecraft:witch,distance=..6] run team leave @s
team leave @e[type=minecraft:witch,tag=wt.blocked]
#if witches get hurt
tag @e[type=minecraft:witch,nbt={HurtTime:10s}] add wt.blocked

#Invisible Villager:
execute as @e[type=minecraft:villager,team=wt.friendly,nbt={Silent:1b}] at @s run function witchtrading:witchvillager

#Effects and Potion
execute as @a[team=wt.friendly,scores={wt.twv=1..}] at @s as @e[team=wt.friendly,distance=..6,tag=wt.traded,limit=1,sort=nearest] at @s run function witchtrading:traded
scoreboard players reset @a[scores={wt.twv=1..}] wt.twv
execute as @a[nbt={ActiveEffects:[{Id:20b,Amplifier:5b,Duration:20,ShowParticles:0b}]}] run function witchtrading:potion
execute as @a[scores={wt.rng=1..}] if score rngmax wt.rng < @s wt.rng run scoreboard players reset @s wt.rng

#If you trade and take away your potato off of your selected slot because you want to trade that item
execute as @a[scores={wt.ttv=1..}] at @s run function witchtrading:trading
tag @a[tag=wt.setup,team=!wt.friendly] remove wt.setup
execute as @a[tag=wt.setup] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run tag @e[team=wt.friendly,type=minecraft:witch,distance=..6,limit=1,sort=nearest,tag=!wt.traded] add wt.blocked
execute as @a[tag=wt.setup] at @s unless entity @e[type=area_effect_cloud,distance=..1,name=wt.friendly] run team leave @s

#sad_orchid effects
execute as @e[tag=wt.sad_orchid,type=minecraft:area_effect_cloud] at @s run function witchtrading:sad_orchid/sad_orchid
#particle effects if close to a sad_orchid (if this is inside of sad_orchid/sad_orchid this particle effect will be executed scaling with the amount of sad_orchids around the player)
execute as @a[scores={wt.rng=9}] at @s if entity @e[tag=wt.sad_orchid,type=minecraft:area_effect_cloud,distance=..3] positioned ~ ~1.35 ~ run particle minecraft:dripping_water ^0.175 ^ ^0.275 0 0 0 1 1 normal

#####placement-API: SAD ORCHID
#calling effects if item is selected
execute as @a[tag=wt.sad_orchid] at @s run function witchtrading:sad_orchid/effects
#tagging if item is selected
tag @a[nbt={SelectedItem:{id:"minecraft:blue_orchid",tag:{HideFlags:1,AttributeModifiers:[{Slot:"offhand",AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUIDLeast:848934,UUIDMost:433777},{Slot:"mainhand",AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:0,UUIDLeast:848934,UUIDMost:433777}]}}}] add wt.sad_orchid
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_orchid",tag:{HideFlags:1,AttributeModifiers:[{Slot:"offhand",AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUIDLeast:848934,UUIDMost:433777},{Slot:"mainhand",AttributeName:"generic.luck",Name:"generic.luck",Amount:2,Operation:0,UUIDLeast:848934,UUIDMost:433777}]}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:blue_orchid"}}] run tag @s add wt.sad_orchid
scoreboard players reset @a[tag=!wt.sad_orchid] wt.sad_orchid
#fallback mechanic: returns lost items if the API failed
execute as @a[scores={wt.so.pa.fail=1..}] at @s run function witchtrading:sad_orchid/fallback

#feature-compatibility: graves
function graves:witchtrading/main
