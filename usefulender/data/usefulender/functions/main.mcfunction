#ender_pearls deal no damage
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick
#reset ue.pearlthrow score
execute as @a[scores={ue.pearlthrow=1..}] unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
execute unless entity @e[type=minecraft:ender_pearl] run scoreboard players reset @a ue.uuid
