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
#remove tag (decolor)
execute if entity @s[tag=!sp.particle_white] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:white_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_orange] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:orange_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_magenta] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:magenta_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_light_blue] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:light_blue_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_yellow] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:yellow_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_light_green] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:lime_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_pink] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:pink_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_gray] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:gray_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_light_gray] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:light_gray_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_cyan] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:cyan_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_purple] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:purple_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_blue] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:blue_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_brown] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:brown_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_green] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:green_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_red] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:red_dye"}}] run function sapphire:particle_generator/decolor
execute if entity @s[tag=!sp.particle_black] align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=minecraft:item,distance=..0.9,nbt={Item:{Count:1b,id:"minecraft:black_dye"}}] run function sapphire:particle_generator/decolor
#add tag (encolor)
execute if entity @s[tag=!sp.particle_set] align xyz positioned ~0.5 ~0.5 ~0.5 run function sapphire:particle_generator/encolor/main
