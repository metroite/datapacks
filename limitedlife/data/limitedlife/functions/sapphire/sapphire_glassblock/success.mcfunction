data merge entity @s {Duration:2147483637,Tags:["sp.sapphire_glass","sp.sapphire_glasssetup","metroite.placement","metroite.place"]}
#end loop
scoreboard players remove @p[scores={sp.glass_placed=1..}] sp.glass_placed 1
kill @e[tag=sp.R.glass,sort=nearest,limit=1]
