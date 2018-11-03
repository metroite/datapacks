execute as @s[tag=!g.skull,nbt={OnGround:1b}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["g.dropskull","g.drop","g.skull"]}
execute as @s[tag=g.skull] unless block ~ ~0.5 ~ minecraft:skeleton_skull run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..6,nbt={Item:{id:"minecraft:skeleton_skull",Count:1b}}] {Item:{id:"minecraft:bone_meal",Count:1b,tag:{CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dust\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @s[tag=g.skull] unless block ~ ~0.5 ~ minecraft:skeleton_skull run kill @s
execute as @s[tag=!g.skull,nbt={OnGround:1b}] run kill @s
