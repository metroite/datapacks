#init
scoreboard objectives remove to.damage
scoreboard objectives remove to.flaming
scoreboard objectives remove to.ta.shoot
scoreboard objectives remove to.ta.shootc
###placement-api_torch
scoreboard objectives remove to.torch
scoreboard objectives remove to.pa.fail
###placement-api_campfire
scoreboard objectives remove to.campfire

#tick
kill @e[type=minecraft:area_effect_cloud,tag=to.tag.torch]
