schedule function usefulender:main100 52t
#scoreboard
scoreboard objectives add ue.pearlthrow minecraft.used:minecraft.ender_pearl
scoreboard objectives add ue.ea.shoot minecraft.used:minecraft.bow
execute unless score $enderarrows$ ue.ea.shoot matches 0.. run scoreboard players set $enderarrows$ ue.ea.shoot 1
scoreboard objectives add ue.ea.shootc minecraft.used:minecraft.crossbow
scoreboard objectives add ue.ea.bind dummy
scoreboard players set 2 ue.ea.bind 2
execute unless score $bindtime$ ue.ea.bind matches 0.. run scoreboard players set $bindtime$ ue.ea.bind 30
scoreboard objectives add ue.pearlX dummy
scoreboard objectives add ue.pearlY dummy
scoreboard objectives add ue.pearlZ dummy
scoreboard objectives add ue.uuid dummy
scoreboard players set 0 ue.uuid 0
execute unless score $max$ ue.uuid >= 0 ue.uuid run scoreboard players set $max$ ue.uuid 10000
execute unless score $accuracy$ ue.pearlthrow >= 0 ue.uuid run scoreboard players set $accuracy$ ue.pearlthrow 3
execute unless score $distance$ ue.pearlthrow >= 0 ue.uuid run scoreboard players set $distance$ ue.pearlthrow 8
