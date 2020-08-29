#timer
scoreboard players add @s ll.wa.shoot 1
execute if score @s ll.wa.shoot matches 300 run data merge entity @s {NoGravity:0b,Color:-1}
execute if entity @s[nbt={inGround:1b}] run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["ll.spawnbat"],id:"minecraft:item",Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:7061,display:{Name:"{\"text\":\"Batwing\",\"color\":\"yellow\",\"italic\":false}"}}}}}}}
tag @s[nbt={inGround:1b}] remove ll.wa.arrow
#particles
particle minecraft:sweep_attack ^ ^ ^0.1 0 0 0 0.5 1 force
playsound minecraft:entity.bat.takeoff ambient @a ~ ~ ~ 0.025 0.76
execute if score @s ll.wa.shoot matches 1 run data merge entity @s {NoGravity:1b,Color:-1}
