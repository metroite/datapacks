##ender arrow
#tick player and determine bow or crossbow
execute if score $enderarrows$ ue.ea.shoot matches 1.. as @a at @s run function usefulender:enderarrow/determine
#tick arrow
#execute if score $enderarrows$ ue.ea.shoot matches 1.. as @e[tag=ue.ea.arrow] at @s run function usefulender:enderarrow/arrow

#ender_pearls deal no damage and dragon_eggs teleport to someplace far away
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick
#reset ue.pearlthrow score
execute as @a[scores={ue.pearlthrow=1..}] unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
execute unless entity @e[type=minecraft:ender_pearl] run scoreboard players reset @a ue.uuid
