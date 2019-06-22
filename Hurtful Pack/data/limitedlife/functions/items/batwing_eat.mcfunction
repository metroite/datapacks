#eating
scoreboard players add @s ll.batwingeat 1
execute if entity @s[scores={ll.batwingeat=1..6}] run playsound entity.generic.eat ambient @a
execute if entity @s[scores={ll.batwingeat=..6}] positioned ~ ~1.5 ~ run particle minecraft:item minecraft:dried_kelp ^ ^ ^0.35 0.05 0.025 0.05 0.05 2 force
execute if entity @s[scores={ll.batwingeat=7}] positioned ~ ~1.5 ~ run particle minecraft:item minecraft:dried_kelp ^ ^ ^0.35 0.05 0.025 0.05 0.1 8 force
execute if entity @s[scores={ll.batwingeat=7}] run playsound minecraft:entity.player.burp ambient @a
execute if entity @s[scores={ll.batwingeat=7}] run clear @s minecraft:bat_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}} 1
execute if entity @s[scores={ll.batwingeat=7}] run effect give @s minecraft:regeneration 3 2
execute if entity @s[scores={ll.batwingeat=7}] run effect give @s minecraft:night_vision 120 0
execute if entity @s[scores={ll.batwingeat=7}] run effect give @s minecraft:saturation 1 5 true
scoreboard players reset @s[scores={ll.batwingeat=7..}] ll.batwingeat
