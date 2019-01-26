#drops "Sapphire"/"Sapphire Ore"
execute as @s[tag=sp.sapphire_main] unless entity @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run data merge entity @e[type=minecraft:item,tag=!pa.dropped,limit=1,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:redstone_ore",Count:1b}}] {Tags:["pa.dropped"],Item:{id:"minecraft:redstone_ore",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,display:{Name:"{\"text\":\"Sapphire Ore\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @s[tag=sp.sapphire_main] run data merge entity @e[type=minecraft:item,tag=!pa.dropped,limit=1,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:redstone",Count:1b}}] {Tags:["pa.dropped"],Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["sp.spawnsquid","sp.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.4 0.4 0.4 2 12
execute as @s[tag=sp.sapphire_main] run recipe give @p[distance=..6] sapphire:weather_detector
execute as @s[tag=sp.sapphire_main] run recipe give @p[distance=..6] sapphire:lightning_rod

execute as @s[tag=sp.sapphire_main,tag=!sp.so.placed] run summon area_effect_cloud ~ ~1 ~ {Duration:2147483637,Tags:["sp.noore"]}
kill @s
