execute as @s[tag=g.north] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=0] replace #graves:generatable
execute as @s[tag=g.east] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=4] replace #graves:generatable
execute as @s[tag=g.south] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=8] replace #graves:generatable
execute as @s[tag=g.west] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=12] replace #graves:generatable

execute as @s unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~ ~-1.42 ~ {Invisible:0b,Invulnerable:1b,Tags:["g.bone"],NoGravity:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:1,Rotation:[131f],Pose:{RightArm:[0f,0f,90f]}}
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~-1.2 ~-1.42 ~ {Invisible:0b,Invulnerable:1b,Tags:["g.bone"],NoGravity:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:1,Rotation:[250f],Pose:{RightArm:[0f,0f,90f]}}
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~1 ~-1.42 ~ {Invisible:0b,Invulnerable:1b,Tags:["g.bone","g.bone+"],NoGravity:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:1,Rotation:[343f],Pose:{RightArm:[0f,0f,90f]}}
execute as @s unless block ~ ~-0.5 ~ #graves:generatable run tag @e[tag=g.bone,distance=..3,limit=1,sort=random] add g.bones
execute as @e[tag=g.bones,tag=g.bone+,distance=..3,limit=1,sort=random] unless block ~ ~-0.5 ~ #graves:generatable run summon armor_stand ~0.1 ~-1.42 ~ {Invisible:0b,Invulnerable:1b,Tags:["g.bone"],NoGravity:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:1,Rotation:[30f],Pose:{RightArm:[0f,0f,90f]}}
tag @e[tag=g.bones,distance=..3] remove g.bones
tag @e[tag=g.bones,distance=..3] remove g.bone+

kill @s
