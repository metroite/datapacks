#entity
execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["g.skull"]}
#placing the skull
execute if entity @s[tag=g.north] run setblock ~ ~ ~ minecraft:player_head[rotation=0] destroy
execute if entity @s[tag=g.east] run setblock ~ ~ ~ minecraft:player_head[rotation=4] destroy
execute if entity @s[tag=g.south] run setblock ~ ~ ~ minecraft:player_head[rotation=8] destroy
execute if entity @s[tag=g.west] run setblock ~ ~ ~ minecraft:player_head[rotation=12] destroy
execute if entity @s[tag=g.south-west] run setblock ~ ~ ~ minecraft:player_head[rotation=10] destroy
execute if entity @s[tag=g.north-west] run setblock ~ ~ ~ minecraft:player_head[rotation=14] destroy
execute if entity @s[tag=g.north-east] run setblock ~ ~ ~ minecraft:player_head[rotation=2] destroy
execute if entity @s[tag=g.south-east] run setblock ~ ~ ~ minecraft:player_head[rotation=6] destroy
#CustomPlayerHead
data modify block ~ ~ ~ SkullOwner set from entity @s ArmorItems[3].tag.SkullOwner
#later used by function skull/display_name. g.gdropskull means it hit the ground
tag @s add g.gdropskull

#summoning the bones
summon armor_stand ~-0.25 ~2 ~1.3 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.gravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[131f],Pose:{RightArm:[230f,0f,90f]}}
summon armor_stand ~-1.1 ~2 ~-1 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.gravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[250f],Pose:{RightArm:[230f,0f,90f]}}
summon armor_stand ~1.2 ~2 ~0.5 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.bone+","g.gravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[343f],Pose:{RightArm:[230f,0f,90f]}}
tag @e[type=minecraft:armor_stand,distance=..4,tag=g.bone,limit=1,sort=random] add g.bones
#chance for 4. bone
execute if entity @e[type=minecraft:armor_stand,distance=..3,limit=1,sort=random,tag=g.bones,tag=g.bone+] run summon armor_stand ~0.7 ~2 ~-1.7 {Invisible:1b,Invulnerable:1b,Tags:["g.bone","g.gravity"],HurtTime:18000s,NoGravity:0b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}],DisabledSlots:2039327,Rotation:[30f],Pose:{RightArm:[230f,0f,90f]}}
tag @e[type=minecraft:armor_stand,distance=..5,tag=g.bone] remove g.bones
tag @e[type=minecraft:armor_stand,distance=..5,tag=g.bone] remove g.bone+
