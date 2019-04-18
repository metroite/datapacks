#ender_pearls deal no damage
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick
#reset ue.pearlthrow score
execute as @a[scores={ue.pearlthrow=1..}] at @s unless entity @e[type=minecraft:ender_pearl,distance=..128] run scoreboard players reset @s ue.pearlthrow
