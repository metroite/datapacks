execute unless entity @s[scores={test=1..7}] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 minecraft:air replace minecraft:white_stained_glass
execute unless entity @s[scores={test=1..7}] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 minecraft:air replace minecraft:red_stained_glass
execute unless entity @s[scores={test=1..7}] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 minecraft:air replace minecraft:orange_stained_glass
execute unless entity @s[scores={test=1..7}] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 minecraft:air replace minecraft:yellow_stained_glass
execute unless entity @s[scores={test=1..7}] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 minecraft:air replace minecraft:green_stained_glass
execute unless entity @s[scores={test=1..7}] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 minecraft:air replace minecraft:blue_stained_glass
execute unless entity @s[scores={test=1..7}] run scoreboard players set @s test 1
tellraw @s[scores={test=1}] ["",{"text":"summon a testing armor_stand","underlined":"true","color":"red","clickEvent":{"action":"run_command","value":"/summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1b,Small:1b,Tags:[\"pa.test\"]}"},"hoverEvent":{"action":"show_text","value":"summons the testing armor_stand"}}]

execute if entity @s[scores={test=1..7}] align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
execute if entity @s[scores={test=1..7}] positioned ^ ^0.5 ^ align xyz if block ~0.5 ~0.5 ~0.5 minecraft:air run function witchtrading:test/success
#repeat if unsuccessful
scoreboard players add @s[scores={test=1..7}] test 1
execute if entity @s[scores={test=1..7}] positioned ^ ^ ^1 run function witchtrading:test/placement1
execute at @s[scores={test=8..}] positioned ~ ~1.5 ~ run function witchtrading:test/placement3
