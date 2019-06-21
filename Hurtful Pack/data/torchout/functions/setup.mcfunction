scoreboard objectives add to.damage dummy
execute unless score $burntime$ to.torch >= 0 to.pa.fail run scoreboard players set $burntime$ to.torch 24000
###placement-api_torch
scoreboard objectives add to.torch minecraft.used:minecraft.torch
scoreboard objectives add to.pa.fail dummy
scoreboard players set 0 to.pa.fail 0
scoreboard players add _fallback_ to.pa.fail 0
###placement-api_campfire
scoreboard objectives add to.campfire minecraft.used:minecraft.campfire
