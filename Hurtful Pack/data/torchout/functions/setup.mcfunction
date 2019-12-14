scoreboard objectives add to.damage dummy
scoreboard objectives add to.flaming dummy
scoreboard objectives add to.ta.shoot minecraft.used:minecraft.bow
scoreboard objectives add to.ta.shootc minecraft.used:minecraft.crossbow
scoreboard objectives add to.ta.bind dummy
scoreboard players set 2 to.ta.bind 2
execute unless score $bindtime$ to.ta.bind matches 0.. run scoreboard players set $bindtime$ to.ta.bind 30
###placement-api_torch
scoreboard objectives add to.torch minecraft.used:minecraft.torch
execute unless score $burntime$ to.torch > 0 to.pa.fail run scoreboard players set $burntime$ to.torch 9
scoreboard objectives add to.pa.fail dummy
scoreboard players set 0 to.pa.fail 0
scoreboard players add €fallback€ to.pa.fail 0
###placement-api_campfire
scoreboard objectives add to.campfire minecraft.used:minecraft.campfire
#scheduled main function for global counter and burnout detection
schedule function torchout:main1200 6t
#optional features
execute unless score $torcharrows$ to.ta.shoot matches 0.. run scoreboard players set $torcharrows$ to.ta.shoot 1
