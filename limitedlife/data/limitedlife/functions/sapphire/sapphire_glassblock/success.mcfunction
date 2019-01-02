summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483637,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup","metroite.placement","metroite.place"]}
#centralizing the area_effect_cloud
summon minecraft:leash_knot ~ ~300 ~ {Tags:["sp.T.glass"]}
execute as @e[tag=sp.sapphire_glass,tag=sp.sapphire_glasssetup,type=minecraft:area_effect_cloud,limit=1,sort=nearest] at @s at @e[tag=sp.T.glass,type=minecraft:leash_knot,sort=nearest,limit=1] run tp @s ~ ~-300.5 ~
#end loop
scoreboard players remove @p[scores={sp.glass_placed=1..}] sp.glass_placed 1
