execute at @s[y_rotation=-22.5..22.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.south"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=-112.5..-67.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.east"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=157.5..-157.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.north"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=67.5..112.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.west"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=22.5..67.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.south-west"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=112.5..157.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.north-west"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=-157.5..-112.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.north-east"],NoGravity:0b,NoBasePlate:1b}
execute at @s[y_rotation=-67.5..-22.5] run summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Invulnerable:1b,Tags:["g.dropskull","g.south-east"],NoGravity:0b,NoBasePlate:1b}
#CustomPlayerHead
data modify entity @e[type=minecraft:armor_stand,tag=g.dropskull,limit=1,sort=nearest,distance=..1] ArmorItems[3].tag.SkullOwner set from entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",Count:1b}},limit=1,sort=nearest,distance=..1] Item.tag.SkullOwner
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:player_head",Count:1b}},limit=1,sort=nearest,distance=..1]
