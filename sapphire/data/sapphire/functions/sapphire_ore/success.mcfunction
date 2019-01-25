function sapphire:generator/ore_placement
#end loop
scoreboard players remove @p[scores={sp.so.pa.ore=1..}] sp.so.pa.ore 1
kill @e[tag=sp.R.ore,sort=nearest,limit=1]
