data merge entity @s {Duration:2147483637,Tags:["wt.sad_orchid","wt.SU.sad_orchid"]}
#end loop
scoreboard players remove @p[scores={wt.sad_orchid=1..}] wt.sad_orchid 1
kill @e[tag=wt.R.sad_orchid,sort=nearest,limit=1]
