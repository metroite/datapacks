#bow
execute if entity @s[scores={to.ta.shoot=1..}] run function torchout:torcharrow/bow/player
##crossbow (bukkit (without modifying player data) and vanilla variant)
execute if score $not1.14$ hp.storeboard matches ..0 run function torchout:torcharrow/crossbow/vanilla
execute unless score $not1.14$ hp.storeboard matches ..0 if entity @s[scores={to.ta.shootc=1..}] run function torchout:torcharrow/crossbow/not1-14
#reset
scoreboard players remove @s[scores={to.ta.bind=1..}] to.ta.bind 1
scoreboard players reset @s to.ta.shoot
scoreboard players reset @s to.ta.shootc
