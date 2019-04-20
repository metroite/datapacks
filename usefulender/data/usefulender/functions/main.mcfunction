#ender_pearls deal no damage and dragon_eggs teleport to someplace far away
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick
#reset ue.pearlthrow score
execute as @a[scores={ue.pearlthrow=1..}] unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
execute unless entity @e[type=minecraft:ender_pearl] run scoreboard players reset @a ue.uuid

#ender arrow
execute as @a[scores={ue.ea.shoot=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] at @s run function usefulender:ender_pearl/ender_arrow/player
execute as @a[scores={ue.ea.shootc=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] at @s run function usefulender:ender_pearl/ender_arrow/player
execute as @e[tag=ue.ea.arrow] at @s run function usefulender:ender_pearl/ender_arrow/tick
scoreboard players reset @a ue.ea.shoot
scoreboard players reset @a ue.ea.shootc
