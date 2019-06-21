#init
scoreboard objectives remove to.damage
###placement-api_torch
scoreboard objectives remove to.torch
scoreboard objectives remove to.pa.fail
###placement-api_campfire
scoreboard objectives remove to.campfire

#tick
kill @e[tag=to.tag.torch]
