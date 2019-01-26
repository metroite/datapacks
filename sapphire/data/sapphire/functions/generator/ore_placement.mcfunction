setblock ~ ~ ~ minecraft:redstone_ore
execute as @s[tag=!sp.so.placed] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore","sp.sapphire_main"],Pose:{Head:[45f,0f,0f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
execute as @s[tag=sp.so.placed] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore","sp.sapphire_main","sp.so.placed","sp.so.setup"],Pose:{Head:[45f,0f,0f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
##spherical sapphire gem
execute as @s[tag=!sp.so.placed] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore"],Pose:{Head:[-30f,150f,-40f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
execute as @s[tag=!sp.so.placed] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore"],Pose:{Head:[225f,145f,225f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
execute as @s[tag=sp.so.placed] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore","sp.so.setup"],Pose:{Head:[-30f,150f,-40f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
execute as @s[tag=sp.so.placed] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore","sp.so.setup"],Pose:{Head:[225f,145f,225f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}

kill @s
