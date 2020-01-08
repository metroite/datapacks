#witch
execute as @a at @s as @e[type=minecraft:witch,distance=..12,tag=!wt.blocked] at @s run function witchtrading:witch/fast/determine

#Potion
execute as @a[nbt={ActiveEffects:[{Id:20b,Amplifier:5b,Duration:20,ShowParticles:0b}]}] run function witchtrading:potion
execute as @a if score $rngmax$ wt.rng < @s wt.rng run scoreboard players reset @s wt.rng

#sad_orchid cleanup when blue_orchid is destroyed
execute as @e[type=minecraft:area_effect_cloud,tag=wt.sad_orchid] at @s unless block ~ ~ ~ minecraft:blue_orchid run function witchtrading:sad_orchid/cleanup

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
execute if score $graves$ hp.storeboard matches 1.. run function graves:witchtrading/main
