##random
#reset
execute unless score x_random sp.sapphire = 0 sp.sapphire unless entity @e[tag=sp.oredrop] run scoreboard players set x_random sp.sapphire 0
execute unless score z_random sp.sapphire = 0 sp.sapphire unless entity @e[tag=sp.oredrop] run scoreboard players set z_random sp.sapphire 0
#generate
execute if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire unless entity @e[tag=sp.lr.timer] run function sapphire:generator/generate
execute if score x_random sp.sapphire > 65 sp.sapphire if score z_random sp.sapphire > 65 sp.sapphire run fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_stained_glass replace minecraft:glass

##placement effects
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.4 0.4 0.4 1 24
#success
execute if score z_random sp.sapphire > 65 sp.sapphire if score z_random sp.sapphire > 65 sp.sapphire run playsound minecraft:ui.toast.in block @a[distance=..16] ~ ~ ~ 2 2
#fail
execute if score z_random sp.sapphire <= 65 sp.sapphire run playsound minecraft:ui.toast.out block @a[distance=..16] ~ ~ ~ 2 1
execute if score x_random sp.sapphire <= 65 sp.sapphire run playsound minecraft:ui.toast.out block @a[distance=..16] ~ ~ ~ 2 1

#ends the particlesetup cycle
tag @s remove sp.sapphire_glasssetup
tag @s remove metroite.placement
