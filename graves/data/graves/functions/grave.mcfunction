#/summon armor_stand ~1 ~-1.42 ~ {Invisible:0b,Invulnerable:1b,Tags:["g.bone"],NoGravity:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039552,Pose:{RightArm:[0f,0f,90f]}}
execute as @s[tag=g.north] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=0] replace #graves:generatable
execute as @s[tag=g.east] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=4] replace #graves:generatable
execute as @s[tag=g.south] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=8] replace #graves:generatable
execute as @s[tag=g.west] run fill ~ ~ ~ ~ ~ ~ minecraft:skeleton_skull[rotation=12] replace #graves:generatable
kill @s
