#g.skull means cleanup and !g.skull is executed from g.dropskull
execute as @s[tag=!g.skull,nbt={OnGround:1b}] unless block ~ ~-0.1 ~ #graves:nocollision align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["g.dropskull","g.drop","g.skull"]}
execute as @s[tag=!g.skull,nbt={OnGround:1b}] if block ~ ~-0.1 ~ #graves:nocollision positioned ~ ~1 ~ align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["g.dropskull","g.drop","g.skull"]}
execute as @s[tag=g.skull] unless block ~ ~0.5 ~ minecraft:player_head run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:player_head",Count:1b}}] {Item:{id:"minecraft:bone_meal",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Skull Dust\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @s[tag=g.skull] unless block ~ ~0.5 ~ minecraft:player_head run kill @s
execute at @s[tag=g.skull] run particle minecraft:dust 0.2314 0.2314 0.25098 0.5 ~ ~ ~ 0.2 0.2 0.2 1 1 normal
execute as @s[tag=!g.skull,nbt={OnGround:1b}] run kill @s
