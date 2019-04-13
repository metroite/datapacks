tag @s add sp.particle_yellow
tag @s add sp.particle_set
execute as @e[distance=..0.9,sort=nearest,limit=1,type=minecraft:item,nbt={Item:{Count:1b,id:"minecraft:dandelion_yellow"}}] at @s run function sapphire:particle_generator/dye_used
