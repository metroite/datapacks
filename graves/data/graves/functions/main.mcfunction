#detecting direction
execute at @a[scores={g.deaths=1..},y_rotation=-45..45] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.south"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=-135..-45] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.east"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=135..-135] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.north"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=45..135] run summon armor_stand ~ ~1 ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.west"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
#tp to make the bone placement look a bit more random (it isn't)
execute as @a[scores={g.deaths=1..}] run tp @e[tag=g.drop,limit=1,sort=nearest,distance=..2] @s

#calling grave.mcfunction and killing leftover armor_stands
execute as @e[tag=g.drop,nbt={OnGround:1b},tag=!g.skull] at @s unless block ~ ~-0.5 ~ #graves:generatable run function graves:grave
execute as @e[tag=g.drop,nbt={OnGround:1b},tag=!g.skull] at @s if block ~ ~-0.5 ~ #graves:generatable run kill @s
kill @e[tag=g.bone,nbt=!{ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}]}]

#stops looping
scoreboard players reset @a[scores={g.deaths=1..}] g.deaths

#g.drop:
execute as @e[tag=g.drop,nbt={OnGround:1b},tag=!g.skull] at @s unless block ~ ~-0.5 ~ #graves:generatable run data merge entity @s {NoGravity:1b,Tags:["g.drop","g.skull"],ArmorItems:[{},{},{},{}]}
execute as @e[tag=g.drop,nbt={OnGround:1b},tag=g.skull] at @s unless block ~ ~ ~ minecraft:skeleton_skull run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:skeleton_skull",Count:1b}}] {Item:{id:"minecraft:bone_meal",Count:1b,tag:{display:{Name:"{\"text\":\"Skull Dust\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @e[tag=g.drop,nbt={OnGround:1b},tag=g.skull] at @s unless block ~ ~ ~ minecraft:skeleton_skull run kill @s
