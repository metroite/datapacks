#ender_pearls deal no damage and dragon_eggs teleport to someplace far away
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick
#reset ue.pearlthrow score
execute as @a[scores={ue.pearlthrow=1..}] at @s unless entity @e[type=minecraft:ender_pearl,distance=..128] run scoreboard players reset @s ue.pearlthrow

#ender arrow (in 1.14: use item tag to list all arrow types and make all of them shootable)
execute as @a[scores={ue.ea.shoot=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] at @s run function usefulender:ender_pearl/ender_arrow/player
execute as @e[tag=ue.ea.arrow] at @s run function usefulender:ender_pearl/ender_arrow/tick
scoreboard players reset @a ue.ea.shoot
