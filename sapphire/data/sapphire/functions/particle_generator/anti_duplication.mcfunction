kill @e[distance=0.1..3,tag=sp.particle,tag=sp.particlesetup]
kill @e[distance=0.1..3,tag=sp.sapphire_glass,tag=sp.sapphire_glasssetup]
#remove sp.sapphire_glass as the required tag and add more lines in main also dont forget placement of particle_generator
execute as @s[tag=!sp.anti_duplication,tag=sp.sapphire_glass,tag=sp.sapphire_glasssetup] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["sp.anti_duplication"]}
