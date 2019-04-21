tag @s[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}},nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ChargedProjectiles:[{id:"minecraft:bat_spawn_egg"}]}}]}] remove ll.wa.shootc

execute if entity @s[scores={ll.wa.shoot=1..}] run tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add ll.wa.arrow
execute if entity @s[scores={ll.wa.shoot=1..}] positioned ~ ~1.2 ~ run particle minecraft:large_smoke ^ ^ ^0.34 0.15 0.15 0.15 0.025 3
execute if entity @s[scores={ll.wa.shoot=1..}] run playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 0.5 0.76
execute if entity @s[scores={ll.wa.shootc=1..}] run tag @e[type=minecraft:arrow,limit=1,sort=nearest,distance=..3] add ll.wa.arrow
execute if entity @s[scores={ll.wa.shootc=1..}] positioned ~ ~1.2 ~ run particle minecraft:large_smoke ^ ^ ^0.34 0.15 0.15 0.15 0.025 3
execute if entity @s[scores={ll.wa.shootc=1..}] run playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 0.5 0.76
