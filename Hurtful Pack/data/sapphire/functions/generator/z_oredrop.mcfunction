#position the armor_stand
execute if score z_random sp.sapphire > 0 sp.sapphire run data merge entity @s {Motion:[0.0d,0.0d,1.0d]}
execute if score z_random sp.sapphire > 0 sp.sapphire run scoreboard players remove z_random sp.sapphire 1
execute if score z_random sp.sapphire < 0 sp.sapphire run data merge entity @s {Motion:[0.0d,0.0d,-1.0d]}
execute if score z_random sp.sapphire < 0 sp.sapphire run scoreboard players add z_random sp.sapphire 1
