#killing leftover bone-armor_stands and decayed bone-armor_stands
execute if entity @s[nbt={HurtTime:0s}] run summon minecraft:item ~ ~1.43 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:bone",Count:1}}
kill @s[nbt={HurtTime:0s}]
kill @s[nbt=!{ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:bone",Count:1b},{}]}]
#make bone fall if no block is underneath
execute if block ~ ~1.41 ~ #graves:nocollision run function graves:skull/bone_fall_alignment
#set bone height if OnGround:1b
execute if entity @s[tag=g.gravity,nbt={OnGround:1b}] run function graves:skull/bone_ground_alignment
