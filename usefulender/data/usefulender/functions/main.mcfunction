#ender arrow
#bow
execute as @a[scores={ue.ea.shoot=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}]}] at @s run function usefulender:ender_pearl/ender_arrow/player
#crossbow
tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:ender_pearl"}]}}}] add ue.ea.shootc
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:ender_pearl"}]}}]}] add ue.ea.shootc
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_pearl"}],SelectedItem:{tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}}] run function usefulender:ender_pearl/ender_arrow/load
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow"}]}}],SelectedItem:{id:"minecraft:ender_pearl"}}] run function usefulender:ender_pearl/ender_arrow/load
execute as @a[tag=ue.ea.shootc] at @s run function usefulender:ender_pearl/ender_arrow/player
#arrow
execute as @e[tag=ue.ea.arrow] at @s run function usefulender:ender_pearl/ender_arrow/tick

#ender_pearls deal no damage and dragon_eggs teleport to someplace far away
execute as @e[type=minecraft:ender_pearl] at @s run function usefulender:ender_pearl/tick
#reset ue.pearlthrow score
execute as @a[scores={ue.pearlthrow=1..}] unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
execute unless entity @e[type=minecraft:ender_pearl] run scoreboard players reset @a ue.uuid

#reset ender_arrow score
scoreboard players reset @a ue.ea.shoot
scoreboard players reset @a ue.ea.shootc
