tag @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:ender_pearl"}]}}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:ender_pearl"}]}}]}] remove ue.ea.shootc

execute if entity @s[scores={ue.ea.shoot=1..}] run tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add ue.ea.arrow
execute if entity @s[scores={ue.ea.shoot=1..}] positioned ~ ~1.2 ~ run particle minecraft:portal ^ ^ ^1 0 0 0 0.5 16
execute if entity @s[scores={ue.ea.shoot=1..}] run playsound minecraft:entity.ender_pearl.throw ambient @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={ue.ea.shoot=1..}] unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
execute if entity @s[scores={ue.ea.shootc=1..}] run tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add ue.ea.arrow
execute if entity @s[scores={ue.ea.shootc=1..}] positioned ~ ~1.2 ~ run particle minecraft:portal ^ ^ ^1 0 0 0 0.5 16
execute if entity @s[scores={ue.ea.shootc=1..}] run playsound minecraft:entity.ender_pearl.throw ambient @a ~ ~ ~ 0.5 0.5
execute if entity @s[scores={ue.ea.shootc=1..}] unless entity @s[scores={ue.uuid=1..}] at @s run function usefulender:uuid/define
