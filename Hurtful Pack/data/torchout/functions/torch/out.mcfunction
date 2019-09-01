#particles
execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run particle minecraft:smoke ~ ~0.85 ~0.3 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run particle minecraft:smoke ~-0.3 ~0.85 ~ 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run particle minecraft:smoke ~ ~0.85 ~-0.3 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run particle minecraft:smoke ~0.3 ~0.85 ~ 0 0 0 0.01 12 normal
execute if block ~ ~ ~ minecraft:torch run particle minecraft:smoke ~ ~0.75 ~ 0 0 0 0.01 12 normal
#visual torchout
execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run summon minecraft:armor_stand ~0.03125 ~-0.215 ~-0.07 {Rotation:[-90f,0f],ShowArms:1b,NoGravity:1b,Pose:{RightArm:[90f,90f,203f]},HandItems:[{id:"minecraft:lever",Count:1b,tag:{CustomModelData:7185}}],Small:1b,Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run summon minecraft:armor_stand ~0.07 ~-0.215 ~0.03125 {ShowArms:1b,NoGravity:1b,Pose:{RightArm:[90f,90f,203f]},HandItems:[{id:"minecraft:lever",Count:1b,tag:{CustomModelData:7185}}],Small:1b,Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run summon minecraft:armor_stand ~0.03125 ~-0.215 ~0.07 {Rotation:[-90f,0f],ShowArms:1b,NoGravity:1b,Pose:{LeftArm:[90f,-90f,-203f]},HandItems:[{},{id:"minecraft:lever",Count:1b,tag:{CustomModelData:7185}}],Small:1b,Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run summon minecraft:armor_stand ~-0.07 ~-0.215 ~0.03125 {ShowArms:1b,NoGravity:1b,Pose:{LeftArm:[90f,-90f,-203f]},HandItems:[{},{id:"minecraft:lever",Count:1b,tag:{CustomModelData:7185}}],Small:1b,Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:torch run summon minecraft:armor_stand ~ ~-0.38 ~ {ShowArms:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:lever",Count:1b,tag:{CustomModelData:7185}}],Small:1b,Marker:1b,Invisible:1b,Tags:["to.torchvisual","to.torchvisualfloor"]}
#replace torch with button
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=north] replace minecraft:wall_torch[facing=north]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=east] replace minecraft:wall_torch[facing=east]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=south] replace minecraft:wall_torch[facing=south]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=west] replace minecraft:wall_torch[facing=west]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=floor] replace minecraft:torch

playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 0.3 1
scoreboard players reset @s to.torch
