#drops "Sapphire"/"Sapphire Ore"
execute as @s[tag=sp.sapphire_main] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:redstone"}}] {Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["sp.spawnsquid","sp.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @s[tag=sp.sapphire_main] run data merge entity @e[type=minecraft:item,limit=1,sort=nearest,distance=..2,nbt={Item:{id:"minecraft:redstone_ore"}}] {Item:{id:"minecraft:armor_stand",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}],CanPlaceOn:["minecraft:void_air"],HideFlags:17,EntityTag:{Tags:["sp.oredrop","sp.valid"]},display:{Name:"{\"text\":\"Sapphire Ore\",\"color\":\"yellow\",\"italic\":false}"}}}}
execute as @s[tag=sp.sapphire_main] run recipe give @p[distance=..6] sapphire:weather_detector
execute as @s[tag=sp.sapphire_main] run recipe give @p[distance=..6] sapphire:lightning_rod

kill @s
