#summoning the g.bones around the skull
execute unless block ~ ~-0.1 ~ #graves:nocollision run function graves:skull/grave
execute if block ~ ~-0.1 ~ #graves:nocollision positioned ~ ~1 ~ run function graves:skull/grave
#effects for g.dropskull
execute unless block ~ ~-0.1 ~ #graves:nocollision align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["g.skull"]}
execute if block ~ ~-0.1 ~ #graves:nocollision positioned ~ ~1 ~ align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["g.skull"]}
kill @s
