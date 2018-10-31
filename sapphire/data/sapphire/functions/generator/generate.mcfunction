#sp.oredrop summoned and dropped somewhere random relative to the player in deep_ocean water
#get "random" scores
execute store result score x_random sp.sapphire run data get entity @e[sort=random,limit=1] Pos[2]
execute store result score z_random sp.sapphire run data get entity @e[sort=random,limit=1] Pos[0]
#shuffle the result
scoreboard players operation x_temp sp.sapphire = c1 sp.sapphire
scoreboard players operation x_temp sp.sapphire *= x_random sp.sapphire
scoreboard players operation z_temp sp.sapphire = c1 sp.sapphire
scoreboard players operation z_temp sp.sapphire *= z_random sp.sapphire

scoreboard players operation x_temp sp.sapphire += c2 sp.sapphire
scoreboard players operation z_temp sp.sapphire += c2 sp.sapphire
scoreboard players operation x_random sp.sapphire = x_temp sp.sapphire
scoreboard players operation z_random sp.sapphire = z_temp sp.sapphire
scoreboard players operation x_temp sp.sapphire %= z_random sp.sapphire
scoreboard players operation z_temp sp.sapphire %= x_random sp.sapphire

scoreboard players operation x_temp sp.sapphire %= c3 sp.sapphire
scoreboard players operation x_random sp.sapphire = x_temp sp.sapphire
scoreboard players operation z_temp sp.sapphire %= c3 sp.sapphire
scoreboard players operation z_random sp.sapphire = z_temp sp.sapphire

#limit those scores to max range of 128
scoreboard players operation x_random sp.sapphire %= 129 sp.sapphire
scoreboard players operation z_random sp.sapphire %= 129 sp.sapphire

#Minimum value
execute if score x_random sp.sapphire < 65 sp.sapphire run scoreboard players operation x_random sp.sapphire *= -2 sp.sapphire
execute if score z_random sp.sapphire < 65 sp.sapphire run scoreboard players operation z_random sp.sapphire *= -2 sp.sapphire
