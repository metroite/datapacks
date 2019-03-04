setblock ~ ~ ~ minecraft:redstone_ore
execute if entity @s[type=!minecraft:player] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:2147483637,Tags:["metroite.place","metroite.placement","sp.sapphire_main","sp.sapphire_ore"]}
execute if entity @s[type=minecraft:player] align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:2147483637,Tags:["metroite.place","metroite.placement","sp.sapphire_main","sp.sapphire_ore","sp.so.placed"]}
#spherical sapphire gem
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore"],Pose:{Head:[45f,0f,0f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore"],Pose:{Head:[-30f,150f,-40f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}
summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["sp.sapphire_ore"],Pose:{Head:[225f,145f,225f]},ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Small:1b,Invisible:1b,Marker:1b}

kill @s[tag=sp.oredrop]
