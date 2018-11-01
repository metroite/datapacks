execute if block ~ ~1 ~ minecraft:air run data merge entity @s[nbt={NoGravity:1b}] {NoGravity:0b,Tags:["g.bone","g.nogravity"]}
execute as @s[nbt={NoGravity:1b}] unless block ~ ~1.42 ~ minecraft:air run tp ~ ~0.01 ~
execute as @s[tag=g.nogravity,nbt={OnGround:1b}] at @s run function graves:groundgbone
execute positioned ~ -1.679 ~ run kill @s[distance=..2]
