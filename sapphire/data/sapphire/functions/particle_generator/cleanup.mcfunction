playsound minecraft:entity.player.levelup block @a[distance=..16] ~ ~ ~ 2 2
particle minecraft:effect ~ ~ ~ 0.15 0.15 0.15 0.5 24
summon minecraft:item ~ ~0.25 ~ {Motion:[0.0d,0.25d,0.0d],Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{EntityTag:{Tags:["sp.spawnsquid","sp.valid"],Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:100000,ShowParticles:0b}]},RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:1}],display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}
kill @s
