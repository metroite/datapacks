#calls x and z oredrop
execute as @s[tag=sp.lr.timer] unless score x_random sp.sapphire = 0 sp.sapphire run function sapphire:generator/x_oredrop
execute as @s[tag=sp.lr.timer] if score x_random sp.sapphire = 0 sp.sapphire unless score z_random sp.sapphire = 0 sp.sapphire run function sapphire:generator/z_oredrop
execute as @s[nbt={OnGround:0b}] if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire run data merge entity @s {Motion:[0.0d,-5.0d,0.0d],Tags:["sp.oredrop"]}
#call ore_placement
execute as @s[nbt={OnGround:1b}] if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:gravel if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire positioned ~ ~-1 ~ run function sapphire:generator/ore_placement
execute as @s[nbt={OnGround:1b}] unless block ~ ~ ~ minecraft:water if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire run kill @s
execute as @s[nbt={OnGround:1b}] unless block ~ ~-1 ~ minecraft:gravel if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire run kill @s
