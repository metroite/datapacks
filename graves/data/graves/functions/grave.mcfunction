#placing the skull
execute as @s[tag=g.north] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=0] replace #graves:generatable
execute as @s[tag=g.east] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=4] replace #graves:generatable
execute as @s[tag=g.south] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=8] replace #graves:generatable
execute as @s[tag=g.west] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=12] replace #graves:generatable

#summoning the bones
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~-0.2 ~2 ~0.8 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.nogravity"],NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039326,Rotation:[131f],Pose:{RightArm:[230f,0f,90f]}}
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~-1 ~2 ~-1 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.nogravity"],NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039326,Rotation:[250f],Pose:{RightArm:[230f,0f,90f]}}
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~1.2 ~2 ~0.4 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.bone+","g.nogravity"],NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039326,Rotation:[343f],Pose:{RightArm:[230f,0f,90f]}}
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run tag @e[tag=g.bone,distance=..4,limit=1,sort=random] add g.bones
#chance for 4. bone
execute as @e[tag=g.bones,tag=g.bone+,distance=..3,limit=1,sort=random] unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~0.6 ~2 ~-1.7 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.nogravity"],NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039326,Rotation:[30f],Pose:{RightArm:[230f,0f,90f]}}
tag @e[tag=g.bones,distance=..3] remove g.bones
tag @e[tag=g.bones,distance=..3] remove g.bone+
