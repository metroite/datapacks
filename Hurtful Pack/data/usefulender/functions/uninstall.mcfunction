#init
team remove wt.friendly
scoreboard objectives remove wt.ttv
scoreboard objectives remove wt.twv
scoreboard objectives remove wt.rng
#placement-API
scoreboard objectives remove wt.sad_orchid
scoreboard objectives remove wt.so.pa.fail

#tick
tag @a remove wt.sad_orchid
kill @e[tag=wt.sad_orchid,type=!minecraft:player]
