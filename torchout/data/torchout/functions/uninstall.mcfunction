#init
scoreboard objectives remove to.damage
###placement-API
scoreboard objectives remove to.torch
scoreboard objectives remove to.pa.fail

#tick
kill @e[tag=to.tag.torch]
