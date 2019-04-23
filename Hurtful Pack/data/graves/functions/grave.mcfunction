#placing the skull
execute as @s[tag=g.north] run setblock ~ ~ ~ minecraft:player_head[rotation=0] destroy
execute as @s[tag=g.east] run setblock ~ ~ ~ minecraft:player_head[rotation=4] destroy
execute as @s[tag=g.south] run setblock ~ ~ ~ minecraft:player_head[rotation=8] destroy
execute as @s[tag=g.west] run setblock ~ ~ ~ minecraft:player_head[rotation=12] destroy
execute as @s[tag=g.south-west] run setblock ~ ~ ~ minecraft:player_head[rotation=10] destroy
execute as @s[tag=g.north-west] run setblock ~ ~ ~ minecraft:player_head[rotation=14] destroy
execute as @s[tag=g.north-east] run setblock ~ ~ ~ minecraft:player_head[rotation=2] destroy
execute as @s[tag=g.south-east] run setblock ~ ~ ~ minecraft:player_head[rotation=6] destroy
#CustomPlayerHead
data modify block ~ ~ ~ Owner set from entity @s ArmorItems[3].tag.SkullOwner

#summoning the bones
summon armor_stand ~-0.25 ~2 ~1.3 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.nogravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[131f],Pose:{RightArm:[230f,0f,90f]}}
summon armor_stand ~-1.1 ~2 ~-1 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.nogravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[250f],Pose:{RightArm:[230f,0f,90f]}}
summon armor_stand ~1.2 ~2 ~0.5 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.bone+","g.nogravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[343f],Pose:{RightArm:[230f,0f,90f]}}
tag @e[tag=g.bone,distance=..4,limit=1,sort=random] add g.bones
#chance for 4. bone
execute as @e[tag=g.bones,tag=g.bone+,distance=..3,limit=1,sort=random] run summon armor_stand ~0.7 ~2 ~-1.7 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.nogravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[30f],Pose:{RightArm:[230f,0f,90f]}}
tag @e[tag=g.bones,distance=..4] remove g.bones
tag @e[tag=g.bones,distance=..4] remove g.bone+
