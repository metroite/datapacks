data merge entity @s {Duration:65,Tags:["sp.lr.attractor","sp.lr.setup"]}
#end loop
scoreboard players remove @p[scores={sp.lr.pa.torch=1..}] sp.lr.pa.torch 1
kill @e[tag=sp.R.torch,sort=nearest,limit=1]
