#give item
give @p[distance=..7] minecraft:squid_spawn_egg{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:8771,display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"},EntityTag:{Tags:["sp.spawnsquid"],id:"minecraft:item",Item:{id:"minecraft:squid_spawn_egg",Count:1b,tag:{RepairCost:99999999,CanPlaceOn:["minecraft:void_air"],HideFlags:17,Enchantments:[{id:"minecraft:unbreaking",lvl:2}],CustomModelData:8771,display:{Name:"{\"text\":\"Sapphire\",\"color\":\"yellow\",\"italic\":false}"}}}}} 1
#effects
particle minecraft:dust 0.25 0.1 1 1.25 ~ ~0.5 ~ 0.15 0.15 0.15 0.05 1
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"dust",Radius:0.2f,RadiusPerTick:0f,RadiusOnUse:0.2f,Duration:100,Color:3349247,Effects:[{Id:13b,Amplifier:0b,Duration:100}]}
playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 2
