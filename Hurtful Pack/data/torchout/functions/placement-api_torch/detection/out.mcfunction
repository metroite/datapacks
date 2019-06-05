#visual torchout
execute if block ~ ~ ~ minecraft:wall_torch[facing=north] run summon minecraft:armor_stand ~0.0625 ~-1.15 ~-0.4 {Fire:32767s,Rotation:[-90f,0f],ShowArms:1b,NoGravity:1b,Pose:{RightArm:[90f,90f,200f]},HandItems:[{id:"minecraft:lever",Count:1b}],Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:wall_torch[facing=east] run summon minecraft:armor_stand ~0.4 ~-1.15 ~0.0625 {Fire:32767s,ShowArms:1b,NoGravity:1b,Pose:{RightArm:[90f,90f,200f]},HandItems:[{id:"minecraft:lever",Count:1b}],Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:wall_torch[facing=south] run summon minecraft:armor_stand ~0.0625 ~-1.15 ~0.4 {Fire:32767s,Rotation:[-90f,0f],ShowArms:1b,NoGravity:1b,Pose:{LeftArm:[90f,-90f,-200f]},HandItems:[{},{id:"minecraft:lever",Count:1b}],Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:wall_torch[facing=west] run summon minecraft:armor_stand ~-0.4 ~-1.15 ~0.0625 {Fire:32767s,ShowArms:1b,NoGravity:1b,Pose:{LeftArm:[90f,-90f,-200f]},HandItems:[{},{id:"minecraft:lever",Count:1b}],Marker:1b,Invisible:1b,Tags:["to.torchvisual"]}
execute if block ~ ~ ~ minecraft:torch run summon minecraft:armor_stand ~ ~-1.8 ~0.275 {Fire:32767s,ShowArms:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:lever",Count:1b}],Marker:1b,Invisible:1b,Tags:["to.torchvisual","to.torchvisualfloor"]}
#replace torch with button
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=north] replace minecraft:wall_torch[facing=north]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=east] replace minecraft:wall_torch[facing=east]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=south] replace minecraft:wall_torch[facing=south]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=wall,facing=west] replace minecraft:wall_torch[facing=west]
fill ~ ~ ~ ~ ~ ~ minecraft:oak_button[face=floor] replace minecraft:torch
