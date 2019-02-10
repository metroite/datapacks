data merge entity @s {Duration:2147483637,Tags:["sp.wd.detector","metroite.place","metroite.placement"]}
#end loop
scoreboard players remove @p[scores={sp.wd.pa.detec=1..}] sp.wd.pa.detec 1
kill @e[tag=sp.R.detector,sort=nearest,limit=1]
