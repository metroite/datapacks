#bow
execute if entity @s[scores={ue.ea.shoot=1..}] run function usefulender:enderarrow/bow/player
##crossbow (bukkit (without modifying player data) and vanilla variant)
execute if score $not1.14$ hp.storeboard matches ..0 run function usefulender:enderarrow/crossbow/vanilla
execute unless score $not1.14$ hp.storeboard matches ..0 if entity @s[scores={ue.ea.shootc=1..}] run function usefulender:enderarrow/crossbow/not1-14
#reset
scoreboard players remove @s[scores={ue.ea.bind=1..}] ue.ea.bind 1
