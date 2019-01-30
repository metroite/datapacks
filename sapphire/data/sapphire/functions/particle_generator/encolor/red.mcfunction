tag @s add sp.particle_red
tag @s add sp.particle_set
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.9,sort=nearest,limit=1,type=minecraft:item] at @s run function sapphire:particle_generator/dye_used
