#position the armor_stand
execute if score x_random sp.sapphire > 0 sp.sapphire run data merge entity @s {Motion:[1.0d,0.0d,0.0d]}
execute if score x_random sp.sapphire > 0 sp.sapphire run scoreboard players remove x_random sp.sapphire 1
execute if score x_random sp.sapphire < 0 sp.sapphire run data merge entity @s {Motion:[-1.0d,0.0d,0.0d]}
execute if score x_random sp.sapphire < 0 sp.sapphire run scoreboard players add x_random sp.sapphire 1
