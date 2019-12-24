#bow
execute if entity @s[scores={to.ta.shoot=1..}] run function torchout:torcharrow/bow/player
##crossbow (bukkit (without modifying player data) and vanilla variant)
execute if score $bukkit$ hp.storeboard matches ..0 run function torchout:torcharrow/crossbow/vanilla
execute if score $bukkit$ hp.storeboard matches 1.. if entity @s[scores={to.ta.shootc=1..}] run function torchout:torcharrow/crossbow/bukkit
#reset
scoreboard players remove @s[scores={to.ta.bind=1..}] to.ta.bind 1
scoreboard players reset @s to.ta.shoot
scoreboard players reset @s to.ta.shootc
