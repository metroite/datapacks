execute at @a[scores={g.deaths=1..},y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.south"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.east"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=135..-135] run summon armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.north"],NoGravity:0b,NoBasePlate:1b,Marker:1b}
execute at @a[scores={g.deaths=1..},y_rotation=45..135] run summon armor_stand ~ ~ ~ {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:skeleton_skull",Count:1b}],Invulnerable:1b,Tags:["g.drop","g.west"],NoGravity:0b,NoBasePlate:1b,Marker:1b}

execute as @e[tag=g.drop,nbt={OnGround:1b}] at @s unless block ~ ~-0.5 ~ #graves:generatable run function graves:grave
execute as @e[tag=g.drop,nbt={OnGround:1b}] at @s if block ~ ~-0.5 ~ #graves:generatable run kill @s

scoreboard players reset @a[scores={g.deaths=1..}] g.deaths
