#drops "Sapphire"/"Sapphire Ore"
data merge entity @e[type=minecraft:item,distance=..2,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:lapis_ore",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:lapis_ore",Count:1b}}] {Item:{id:"minecraft:lapis_ore",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,CustomModelData:8771,display:{Name:"{\"text\":\"Sapphire Ore\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute unless entity @e[type=minecraft:item,distance=..2,nbt={Age:0s,Item:{id:"minecraft:lapis_ore",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,CustomModelData:8771,display:{Name:"{\"text\":\"Sapphire Ore\",\"color\":\"yellow\",\"italic\":false}"}}}}] run summon minecraft:item ~ ~ ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:8771,display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["sp.spawnsquid"],id:"minecraft:item",Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:8771,display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}}}}
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.4 0.4 0.4 2 12
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 2
recipe give @p[distance=..8] sapphire:water_detector
recipe give @p[distance=..8] sapphire:lightning_rod
kill @e[type=minecraft:armor_stand,distance=..0.5,limit=4,tag=sp.sapphire_ore]

kill @s
