#bow
execute if entity @s[scores={ue.ea.shoot=1..}] run function usefulender:enderarrow/bow/player
##crossbow (bukkit (without modifying player data) and vanilla variant)
execute if score $bukkit$ hp.storeboard matches ..0 run function usefulender:enderarrow/crossbow/vanilla
execute if score $bukkit$ hp.storeboard matches 1.. if entity @s[scores={ue.ea.shootc=1..}] run function usefulender:enderarrow/crossbow/bukkit
#reset
scoreboard players remove @s[scores={ue.ea.bind=1..}] ue.ea.bind 1
scoreboard players reset @s ue.ea.shoot
scoreboard players reset @s ue.ea.shootc
