#killing leftover bone-armor_stands and decayed bone-armor_stands
execute if entity @s[nbt={HurtTime:0s}] run summon minecraft:item ~ ~1.43 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:bone",Count:1}}
kill @s[nbt={HurtTime:0s}]
kill @s[nbt=!{ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}]}]
#effects
execute if block ~ ~1 ~ #graves:nocollision run data merge entity @s[nbt={NoGravity:1b}] {NoGravity:0b,Tags:["g.bone","g.nogravity"]}
#move bone up (at @s because it has to be relative every tp)
execute at @s[nbt={NoGravity:1b}] unless block ~ ~1.57 ~ #graves:nocollision run tp ~ ~0.16 ~
execute at @s[nbt={NoGravity:1b}] unless block ~ ~1.49 ~ #graves:nocollision run tp ~ ~0.08 ~
execute at @s[nbt={NoGravity:1b}] unless block ~ ~1.45 ~ #graves:nocollision run tp ~ ~0.04 ~
execute at @s[nbt={NoGravity:1b}] unless block ~ ~1.43 ~ #graves:nocollision run tp ~ ~0.02 ~
execute at @s[nbt={NoGravity:1b}] unless block ~ ~1.42 ~ #graves:nocollision run tp ~ ~0.01 ~
#set bone height if OnGround:1b
execute if entity @s[tag=g.nogravity,nbt={OnGround:1b}] run function graves:skull/bone_ground_alignment
execute positioned ~ -1.679 ~ run kill @s[distance=..2]
