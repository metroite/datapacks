#particle direction and color of particles
execute if entity @s[tag=sp.particledown] if block ~ ~ ~ minecraft:observer[powered=true] run function sapphire:particle_generator/particle/down
execute if entity @s[tag=sp.particleeast] if block ~ ~ ~ minecraft:observer[powered=true] run function sapphire:particle_generator/particle/east
execute if entity @s[tag=sp.particlenorth] if block ~ ~ ~ minecraft:observer[powered=true] run function sapphire:particle_generator/particle/north
execute if entity @s[tag=sp.particlesouth] if block ~ ~ ~ minecraft:observer[powered=true] run function sapphire:particle_generator/particle/south
execute if entity @s[tag=sp.particleup] if block ~ ~ ~ minecraft:observer[powered=true] run function sapphire:particle_generator/particle/up
execute if entity @s[tag=sp.particlewest] if block ~ ~ ~ minecraft:observer[powered=true] run function sapphire:particle_generator/particle/west

#kill sp.particle
execute unless block ~ ~ ~ minecraft:observer run function sapphire:particle_generator/cleanup

##recolor the particles
#check if item is close and if it is, run decolor
execute if entity @e[type=minecraft:item,distance=..0.9] run function sapphire:particle_generator/color_check
#add tag (encolor) if tag was removed (decolor)
execute if entity @s[tag=!sp.particle_set] run function sapphire:particle_generator/encolor/main
