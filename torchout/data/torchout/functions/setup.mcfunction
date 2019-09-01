scoreboard objectives add to.damage dummy
scoreboard objectives add to.flaming dummy
scoreboard objectives add to.ta.shoot minecraft.used:minecraft.bow
scoreboard objectives add to.ta.shootc minecraft.used:minecraft.crossbow
###placement-api_torch
scoreboard objectives add to.torch minecraft.used:minecraft.torch
execute unless score $burntime$ to.torch > 0 to.pa.fail run scoreboard players set $burntime$ to.torch 48000
scoreboard objectives add to.pa.fail dummy
scoreboard players set 0 to.pa.fail 0
scoreboard players add _fallback_ to.pa.fail 0
###placement-api_campfire
scoreboard objectives add to.campfire minecraft.used:minecraft.campfire
